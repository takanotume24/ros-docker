.PHONY: build
build:
	make -C catkin-base build
	make -C catkin-base-with-nvidia build
	make -C pedsim-ros-base build
	make -C airsim build