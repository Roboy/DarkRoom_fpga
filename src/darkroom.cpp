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
	int i = 0;
    unsigned int lastDuration = 0;
	while (i < 100000) {
		//cout << (++i) << " running" << endl;



        unsigned int data_read = IORD(h2p_lw_darkroom_addr, 1);
        if (data_read == lastDuration) continue;

        lastDuration = data_read;
        cout << "peak duration: " << (data_read / 50) << endl;
        usleep(100);

        /*
		for (int i = 0; i < 10; i++) {
			int32_t data_read = IORD(h2p_lw_darkroom_addr, i);
			cout << "read addr " << i << ": " << data_read << endl;
			usleep(100);
		}
				
		IOWR(h2p_lw_darkroom_addr,0,1); // base reg data
		cout << "written some stuff, waiting" << endl;
		usleep(100000);
        */
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