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

void DarkRoom::getSensorValues(){
    int lastDurationHigh = 0;
    int lastDurationLow = 0;

    int skippedHigh = 0;
    int skippedLow = 0;
	while (1) {

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

        // output
        cout << "high: " << (lastDurationHigh / 50) << " \t\tlow: " << (lastDurationLow / 50) << " \t\tskipped(" <<  skippedHigh << ", " << skippedLow << ")" << endl;
        skippedLow = 0;
        skippedHigh = 0;

        // READ NEW VALUES
        int combined = IORD(h2p_lw_darkroom_addr, 5);
        int debug = IORD(h2p_lw_darkroom_addr, 6);
        int debug2 = IORD(h2p_lw_darkroom_addr, 7);
        int debug3 = IORD(h2p_lw_darkroom_addr, 4);
        cout << "combined: " << (combined & 0xFFF) << endl;
        cout << "debug: " << debug << endl;
        cout << "debug2: " << debug2 << endl;
        cout << "debug3: " << debug3 << endl;

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