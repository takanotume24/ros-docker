FROM takanotume24/ros-docker-with-nvidia:catkin-base
ENV HOME=/root
ENV CATKIN_WS=${HOME}/catkin_ws
ENV ROS_DISTRO=melodic
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility,graphics
SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y\
    rsync
WORKDIR ${HOME}
RUN git clone https://github.com/Microsoft/AirSim.git;
WORKDIR ${HOME}/AirSim
RUN ./setup.sh
RUN ./build.sh
RUN wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage
