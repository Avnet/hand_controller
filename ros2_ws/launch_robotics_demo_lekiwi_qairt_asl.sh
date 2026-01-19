export QMONITOR_BACKEND_LIB_PATH=/var/QualcommProfiler/libs/backends/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/var/QualcommProfiler/libs/
export PATH=$PATH:/data/shared/QualcommProfiler/bins
export XDG_RUNTIME_DIR=/dev/socket/weston
export WAYLAND_DISPLAY=wayland-1
export HOME=/home
export ROS_DOMAIN_ID=0
source /usr/bin/ros_setup.sh && source /usr/share/qirp-setup.sh
source /root/lekiwi_ros2/src/install/setup.bash
source /root/hand_controller/ros2_ws/install/setup.bash

export PRODUCT_SOC=6490 DSP_ARCH=68
source /root/qairt/2.40.0.251030/bin/envsetup.sh
export ADSP_LIBRARY_PATH=$QNN_SDK_ROOT/lib/hexagon-v${DSP_ARCH}/unsigned
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$QNN_SDK_ROOT/lib/aarch64-oe-linux-gcc11.2

ros2 launch hand_controller demo13_lekiwi_part1_qai2asl.launch.py verbose:=False use_flask:=False use_imshow:=False x_t:=0.20 x_a:=0.0 x_b:=10.0 z_t:=0.20 z_a:=0.0 z_b:=2.0 threshold_detctor_minscore:=0.6 | ros2 run hand_controller gtk_gui_node

