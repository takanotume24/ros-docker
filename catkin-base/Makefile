IMAGE=ros-docker
TAG=catkin-base

build:
	sudo docker build -t ${IMAGE}:${TAG} .
run:
	sudo docker run -it \
		--gpus all \
		--env="DISPLAY" \
		--env="QT_X11_NO_MITSHM=1" \
		--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
		${IMAGE}:${TAG} 