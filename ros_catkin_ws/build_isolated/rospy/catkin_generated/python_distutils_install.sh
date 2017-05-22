#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/root/ros_catkin_ws/src/ros_comm/rospy"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/ros_catkin_ws/install_isolated/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/ros_catkin_ws/install_isolated/lib/python2.7/dist-packages:/root/ros_catkin_ws/build_isolated/rospy/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/ros_catkin_ws/build_isolated/rospy" \
    "/usr/bin/python" \
    "/root/ros_catkin_ws/src/ros_comm/rospy/setup.py" \
    build --build-base "/root/ros_catkin_ws/build_isolated/rospy" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/root/ros_catkin_ws/install_isolated" --install-scripts="/root/ros_catkin_ws/install_isolated/bin"
