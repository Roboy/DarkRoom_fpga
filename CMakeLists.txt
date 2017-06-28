PROJECT( darkroom_fpga C CXX)

CMAKE_MINIMUM_REQUIRED (VERSION 2.8.7)

# Set CMake Policy to suppress the warning in CMake version 3.3.x
IF (POLICY CMP0043)
    CMAKE_POLICY(SET CMP0043 OLD)
ENDIF()

# we are cross compiling for arm (make sure to be in embedded_command_shell.sh)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armv7l)

set(compiler_path /usr/bin)
set(CMAKE_C_COMPILER ${compiler_path}/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${compiler_path}/arm-linux-gnueabihf-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

SET(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O0 -g")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g")

# ros
find_package(catkin REQUIRED COMPONENTS roboy_communication_middleware std_msgs)
include(findros)
include_directories(${catkin_INCLUDE_DIRS} )
catkin_package( CATKIN_DEPENDS message_runtime roboy_communication_middleware)
include_directories(include/darkroom_fpga)

# Set generic sources and include directories for this demo
SET(SOURCE
        src/main.cpp
        src/darkroom.cpp
    )

include(findncurses_arm)

SET(ALT_DEVICE_FAMILY soc_cv_av)
add_definitions(-D${ALT_DEVICE_FAMILY})
MESSAGE(STATUS "fpga include dir: $ENV{SOCEDS_DEST_ROOT}/ip/altera/hps/altera_hps/hwlib/${ALT_DEVICE_FAMILY}")
MESSAGE(STATUS "objectdic dir: ${OPLK_BASE_DIR}/apps/common/objdicts/${OBJDICT}")
INCLUDE_DIRECTORIES(
    include/
        usr/include/
        $ENV{SOCEDS_DEST_ROOT}/ip/altera/hps/altera_hps/hwlib/${ALT_DEVICE_FAMILY}
        $ENV{SOCEDS_DEST_ROOT}/ip/altera/hps/altera_hps/hwlib/include
        $ENV{SOCEDS_DEST_ROOT}/ip/altera/hps/altera_hps/hwlib/include/${ALT_DEVICE_FAMILY}
    )

################################################################################

################################################################################
# Set the executable

ADD_EXECUTABLE(darkroom_fpga ${SOURCE} ${DEMO_ARCH_SOURCES} )
TARGET_LINK_LIBRARIES(darkroom_fpga ${ros_LIBRARIES} -pthread)#

#==============================================================================
# Installation
#==============================================================================
install(TARGETS
        darkroom_fpga
        DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
        )
