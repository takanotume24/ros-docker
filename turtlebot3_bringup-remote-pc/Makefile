IMAGE=takanotume24/turtlebot3_bringup-remote-pc
TAG=sha-110b37b

build:
	sudo docker build --no-cache -t ${IMAGE}:${TAG} .
run:
	sudo docker run -it \
		--gpus all,capabilities=graphics \
		--env="DISPLAY" \
		--env="QT_X11_NO_MITSHM=1" \
		--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
		${IMAGE}:${TAG} 
start:
	xhost +
	