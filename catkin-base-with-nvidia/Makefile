IMAGE=ros-docker
TAG=catkin-base-with-nvidia

build:
	sudo docker build -t ${IMAGE}:${TAG} .
run:
	sudo docker run -it \
		--gpus all \
		--env="DISPLAY" \
		--env="QT_X11_NO_MITSHM=1" \
		--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
		--name=${NAME} \
		${IMAGE}:${TAG} 
start:
	xhost +
	