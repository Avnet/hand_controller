export QMONITOR_BACKEND_LIB_PATH=/var/QualcommProfiler/libs/backends/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/var/QualcommProfiler/libs/
export PATH=$PATH:/data/shared/QualcommProfiler/bins
export XDG_RUNTIME_DIR=/dev/socket/weston
export WAYLAND_DISPLAY=wayland-1
export HOME=/home
export ROS_DOMAIN_ID=0
source /usr/bin/ros_setup.sh && source /usr/share/qirp-setup.sh
source /root/hand_controller/ros2_sw/install/setup.bash
ros2 launch hand_controller demo11_mogiros_car_part1_ei1dials.launch.py verbose:=False model:=/root/hand_controller/hands-v2-yolov5-linux-aarch64-qnn-v36.eim use_flask:=False use_imshow:=False x_t:=0.20 z_t:=0.20 | ros2 run hand_controller gtk_gui_node

