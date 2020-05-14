FROM nvidia/cudagl:10.2-devel-ubuntu18.04
SHELL ["/bin/bash", "-c"]
ENV HOME=/root
ENV CATKIN_WS=${HOME}/catkin_ws
ENV DEBIAN_FRONTEND=noninteractive
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility,graphics

RUN apt update && apt install -y\
    wget \
    git \
    tzdata \
    lsb-release

RUN sh -c 'echo "$(lsb_release -sc)"'
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' &&\
    apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

RUN apt update && apt install -y\
    ros-melodic-desktop-full \
    python-rosdep \
    python-catkin-tools \
    python-wstool

RUN mkdir -p ${CATKIN_WS}/src
WORKDIR ${CATKIN_WS}
RUN source /opt/ros/melodic/setup.bash &&\
    catkin init &&\
    rosdep init &&\
    rosdep update &&\
    catkin build 
RUN echo "source /root/catkin_ws/devel/setup.bash" > ${HOME}/.bashrc
RUN source ${HOME}/.bashrc

# Set the locale
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8     








