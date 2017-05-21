#include "darkroom.hpp"

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

void DarkRoom::getSensorValues(){
    ros::Rate rate(120);
    while(getData){
        uint32_t data_available = IORD(h2p_lw_darkroom_addr, 0);
        roboy_communication_middleware::DarkRoom msg;
        for(uint i = 1; i<=14; i++){
            if((data_available>>i)&0x1){
                msg.sensor_value.push_back(IORD(h2p_lw_darkroom_addr, i));
            }
        }
        if(!msg.sensor_value.empty())
        sensor_pub.publish(msg);
        rate.sleep();
    }
}