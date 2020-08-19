FROM ubuntu:18.04
SHELL ["/bin/bash", "-c"]
ENV HOME=/root
ENV CATKIN_WS=${HOME}/catkin_ws
ENV DEBIAN_FRONTEND=noninteractive
ENV USER=ROOT

RUN apt update && apt install -y\
    ubuntu-server \
    wget \
    git \
    tzdata \
    lsb-release \
    curl \
    vim \
    avahi-daemon \ 
    iputils-ping \
    net-tools\ 
    gnupg

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
RUN echo "source /root/catkin_ws/devel/setup.bash" >> ${HOME}/.bashrc
RUN echo "source /opt/ros/melodic/setup.bash" >> ${HOME}/.bashrc
RUN source ${HOME}/.bashrc

# Set the locale
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y locales \
    && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && dpkg-reconfigure --frontend=noninteractive locales \
    && update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8 
ENV LC_ALL en_US.UTF-8

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc



