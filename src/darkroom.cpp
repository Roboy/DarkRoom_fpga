#include "darkroom.hpp"
#include <iostream>

DarkRoom::DarkRoom(void* h2p_lw_darkroom_addr):h2p_lw_darkroom_addr(h2p_lw_darkroom_addr){

	// ROS STUFF
	/*
    if (!ros::isInitialized()) {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "darkroom_fpga", ros::init_options::AnonymousName);
    }
    nh = ros::NodeHandlePtr(new ros::NodeHandle);

    sensor_pub = nh->advertise<roboy_communication_middleware::DarkRoom>("/roboy/middleware/DarkRoom/sensors", 10);

    spinner = boost::shared_ptr<ros::AsyncSpinner>(new ros::AsyncSpinner(1));
    spinner->start();
    */
    // END ROS STUFF
    
    sensor_thread = boost::shared_ptr<thread>(new thread(&DarkRoom::getSensorValues, this));
    sensor_thread->detach();
}

DarkRoom::~DarkRoom(){
    getData = false;
    if (sensor_thread != nullptr) {
        if (sensor_thread->joinable()) {
            ROS_INFO("Waiting for sensor thread to terminate");
            sensor_thread->join();
        }
    }
};


int lastDurationHigh = 0;
int lastDurationLow = 0;
int skippedHigh = 0;
int skippedLow = 0;

void waitForTestData(void* h2p_lw_darkroom_addr) {
    // high phase
        int readHigh;
        do { 
            readHigh = IORD(h2p_lw_darkroom_addr, 1);
            skippedHigh++;
            usleep(10);
        } while (readHigh == lastDurationHigh);
        lastDurationHigh = readHigh;

        // low phase
        int readLow;
        do { 
            readLow = IORD(h2p_lw_darkroom_addr, 2);
            skippedLow++;
            usleep(10);
        } while (readLow == lastDurationLow);
        lastDurationLow = readLow;

        skippedLow = 0;
        skippedHigh = 0;
}

int readUntilValueChanges(int address, int oldVal, void* h2p_lw_darkroom_addr) {
    int data;
    do { 
        data = IORD(h2p_lw_darkroom_addr, address);            
        usleep(10);
    } while (data == oldVal);
    return data;
}


void DarkRoom::getSensorValues(){

    /*

    (address == 0) ? 32'h0000_0005 : 
    (address == 1) ? test_duration_high :
    (address == 2) ? test_duration_low :
    (address == 5) ? real_combined_data :
    (address == 6) ? real_debug_data :
    (address == 7) ? real_duration_nskip_to_sweep :
    32'hDEAD_BEEF;


    combined_data(31) <= current_lighthouse_id;
    combined_data(30) <= current_axis;
    combined_data(29 downto 0) <= duration_from_nskip_rise_to_sweep_rise(29 downto 0);

    */


    int real_duration_nskip_to_sweep = 0;
    int real_combined_data = 0;

    int duration0x = 0;
    int duration0y = 0;
    int duration1x = 0;
    int duration1y = 0; 

	while (1) {
        
        //waitForTestData(h2p_lw_darkroom_addr);
        //cout << "high: " << (lastDurationHigh / 50) << " \t\tlow: " << (lastDurationLow / 50) << " \t\tskipped(" <<  skippedHigh << ", " << skippedLow << ")" << endl;
        
        //real_duration_nskip_to_sweep = readUntilValueChanges(7, real_duration_nskip_to_sweep, h2p_lw_darkroom_addr);
        //cout << "nskip to sweep: " << (real_duration_nskip_to_sweep/50) << endl;

        real_combined_data = readUntilValueChanges(5, real_combined_data, h2p_lw_darkroom_addr);
        int nskip_to_sweep  = real_combined_data & 0x1FFFFFFF;        
        int valid           = (real_combined_data & 0x20000000) >> 29;
        int current_axis    = (real_combined_data & 0x40000000) >> 30;
        int lighthouse_id   = (real_combined_data & 0x80000000) >> 31;

        if (valid) {
            if ( current_axis &&  lighthouse_id) duration0x = nskip_to_sweep;
            if (!current_axis &&  lighthouse_id) duration0y = nskip_to_sweep;
            if ( current_axis && !lighthouse_id) duration1x = nskip_to_sweep;
            if (!current_axis && !lighthouse_id) duration1y = nskip_to_sweep;


            cout << "0x " << (duration0x/50)   << "\t0y " << (duration0y/50);
            cout << "\t1x " << (duration1x/50) << "\t1y " << (duration1y/50) << endl;

        }

	}

    ros::Rate rate(120);

    int nSkipDurations[] = {63, 73, 83, 94};
    int skipDurations[] = {104, 115, 125, 135};

    while(getData){
        uint32_t data_available = IORD(h2p_lw_darkroom_addr, 0);
        roboy_communication_middleware::DarkRoom msg;
        for(uint i = 1; i<=14; i++){
            if((data_available>>i)&0x1){
                int32_t data = IORD(h2p_lw_darkroom_addr, i);
                // data = 8x"0" + sweep duration (8bit) + NOT skipping pulse duratio (8bit) + skipping pulse duration (8bit)
                if (data != 0) {
                    int32_t sweep = (data >> 16) & 0xFF;
                    int32_t nSkip = (data >> 8) & 0xFF;
                    int32_t skip = data & 0xFF;


                    // calc minimal error (to the next valid value)
                    int skipMinErr = 9999;
                    int nSkipMinErr = 9999;
                    for (int j = 0; j < 4; j++) {
                        int skipErr = abs(skipDurations[j] - skip);
                        if (skipMinErr > skipErr) skipMinErr = skipErr;

                        int nSkipErr = abs(nSkipDurations[j] - nSkip);
                        if (nSkipMinErr > nSkipErr) nSkipMinErr = nSkipErr;
                    }


                    // PRINT raw values
                    cout << i << "  ";
                    cout << "sweep: " << (sweep < 10 ? " " : "") << sweep << "; ";
                    cout << "NOT skipping pulse: " << nSkip << "; ";
                    cout << "skipping pulse: " << skip << endl;

                    // PRINT minimal error
                    if (skipMinErr > 3 || nSkipMinErr > 3) {
                       // cout << "skip error: " << skipMinErr << "\t\tNOT skip error: " << nSkipMinErr << endl;
                    }
                }


                // msg.sensor_value.push_back(IORD(h2p_lw_darkroom_addr, i));
            }
        }
        if(!msg.sensor_value.empty()) {
            sensor_pub.publish(msg);
        }

        rate.sleep();
    }
}