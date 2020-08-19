FROM takanotume24/catkin-base-with-nvidia:latest
ENV HOME=/root
ENV CATKIN_WS=${HOME}/catkin_ws
ENV ROS_DISTRO=melodic
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility,graphics
SHELL ["/bin/bash", "-c"]

# init pedsim-ros
WORKDIR ${CATKIN_WS}/src
RUN git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
RUN git clone -b melodic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git

WORKDIR ${CATKIN_WS}
RUN source ${CATKIN_WS}/devel/setup.bash
RUN rosdep install -i -y --from-path . 
RUN catkin build
RUN source ${HOME}/.bashrc
