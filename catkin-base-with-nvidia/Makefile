IMAGE=takanotume24/catkin-base-with-nvidia
TAG=sha-940bc29

build:
	sudo docker build -t ${IMAGE}:${TAG} .
run:
	sudo docker run -it \
		--gpus all \
		--env="DISPLAY" \
		--env="QT_X11_NO_MITSHM=1" \
		--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
		--name=${NAME} \
		--rm \
		${IMAGE}:${TAG} 
start:
	xhost +
	