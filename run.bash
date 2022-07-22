#!/bin/bash

xhost +local:root

docker run --gpus all --rm -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    robinlab/icra2021-tracking:18.04

xhost -local:root

