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


    int combined_data = 0;    
    int duration0x = 0;
    int duration0y = 0;
    int duration1x = 0;
    int duration1y = 0; 

    /*
    combined data layout:
        bit  31      lighthouse_id
        bit  30      axis
        bit  29      valid
        bits 28:0    duration (divide by 50 to get microseconds)    
    */


    while(1) {

        // DATA
        // combined data on address 5
        combined_data = readUntilValueChanges(5, combined_data, h2p_lw_darkroom_addr);
        int nskip_to_sweep  =  combined_data & 0x1FFFFFFF;        
        int valid           = (combined_data & 0x20000000) >> 29;
        int current_axis    = (combined_data & 0x40000000) >> 30;
        int lighthouse_id   = (combined_data & 0x80000000) >> 31;


        if (valid) {

            // ROS

            roboy_communication_middleware::DarkRoom msg;
            msg.sensor_value.push_back(combined_data);
            sensor_pub.publish(msg);


            // CONSOLE

            if ( current_axis &&  lighthouse_id) duration0x = nskip_to_sweep;
            if (!current_axis &&  lighthouse_id) duration0y = nskip_to_sweep;
            if ( current_axis && !lighthouse_id) duration1x = nskip_to_sweep;
            if (!current_axis && !lighthouse_id) duration1y = nskip_to_sweep;

            cout << "0x " << (duration0x/50)   << "\t0y " << (duration0y/50);
            cout << "\t1x " << (duration1x/50) << "\t1y " << (duration1y/50) << endl;

        }


    }

}