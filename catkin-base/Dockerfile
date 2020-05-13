FROM ros:melodic
ENV HOME=/root
    

RUN apt update && apt install wget -y

# install catkin
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list' && \
    wget http://packages.ros.org/ros.key -O - | apt-key add - && \
    apt update && apt install python-catkin-tools -y 
WORKDIR ${HOME}
RUN mkdir -p catkin_ws/src
WORKDIR ${HOME}/catkin_ws
RUN catkin init



