#include "darkroom.hpp"
#include <iostream>

DarkRoom::DarkRoom(void* h2p_lw_darkroom_addr):h2p_lw_darkroom_addr(h2p_lw_darkroom_addr){
    if (!ros::isInitialized()) {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "darkroom_fpga", ros::init_options::AnonymousName);
    }
    nh = ros::NodeHandlePtr(new ros::NodeHandle);

    sensor_pub = nh->advertise<roboy_communication_middleware::DarkRoom>("/roboy/middleware/DarkRoom/sensors", 10);

    spinner = boost::shared_ptr<ros::AsyncSpinner>(new ros::AsyncSpinner(1));
    spinner->start();
    
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


int readUntilValueChanges(int address, int oldVal, void* h2p_lw_darkroom_addr) {
    int data;
    do { 
        data = IORD(h2p_lw_darkroom_addr, address);            
        usleep(10);
    } while (data == oldVal);
    return data;
}


void DarkRoom::getSensorValues() {

  


    ros::Rate rate(240); // two times faster than actually needed

    while(1) {

        roboy_communication_middleware::DarkRoom msg;

        // read all 9 sensors
        for (int i = 0; i <= 8; i++) {
            /*
            combined data for each sensor is available on addresses 0 to 8
            layout:
                bit  31      lighthouse_id
                bit  30      axis
                bit  29      valid
                bits 28:0    duration (divide by 50 to get microseconds)    
            */

            // ROS
            int combined_data = IORD(h2p_lw_darkroom_addr, i);
            msg.sensor_value.push_back(combined_data);

            // CONSOLE
            int nskip_to_sweep  =  combined_data & 0x1FFFFFFF;        
            int valid           = (combined_data & 0x20000000) >> 29;
            int current_axis    = (combined_data & 0x40000000) >> 30;
            int lighthouse_id   = (combined_data & 0x80000000) >> 31;
            if (valid) {
                cout << "sensor(" << i << "): id=" << lighthouse_id;
                cout << "\taxis=" << current_axis << "\tduration=" << nskip_to_sweep << endl;
            }
        }

        sensor_pub.publish(msg);
        rate.sleep();

    }

}