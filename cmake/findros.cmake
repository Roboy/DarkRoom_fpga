set(ROS_ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/ros_catkin_ws/install_isolated)
include_directories(${ROS_ROOT_DIR}/include
                    ${CMAKE_CURRENT_SOURCE_DIR}/usr/local/include)
set(ros_LIBRARIES
        ${ROS_ROOT_DIR}/lib/librosconsole.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/local/lib/libconsole_bridge.so
        ${ROS_ROOT_DIR}/lib/libroslz4.so
        ${ROS_ROOT_DIR}/lib/libroscpp.so
        ${ROS_ROOT_DIR}/lib/librostime.so
        ${ROS_ROOT_DIR}/lib/libroscpp_serialization.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/local/lib/libboost_system.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/liblog4cxx.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/local/lib/libboost_regex.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/local/lib/libboost_regex.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/libapr-1.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/libaprutil-1.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/arm-linux-gnueabihf/libexpat.a
        ${CMAKE_CURRENT_SOURCE_DIR}/lib/arm-linux-gnueabihf/libuuid.so.1.3.0
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/arm-linux-gnueabihf/libicuio.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/arm-linux-gnueabihf/libicudata.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/arm-linux-gnueabihf/libicule.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/arm-linux-gnueabihf/libicutu.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/arm-linux-gnueabihf/libicuuc.so
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/arm-linux-gnueabihf/libicui18n.so
        ${CMAKE_CURRENT_SOURCE_DIR}/lib/arm-linux-gnueabihf/libdl.so.2
        ${CMAKE_CURRENT_SOURCE_DIR}/usr/lib/liblz4.a
        )
message(STATUS "ros_LIBRARIES: ${ros_LIBRARIES}" )