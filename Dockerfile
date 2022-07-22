FROM robinlab/robot-libs-ros-torch:18.04

RUN git clone https://github.com/ICRA-2021/ICRA2021tracking.git

RUN cd ICRA2021tracking/Pytorch && mkdir weight && cd weight && \
    wget -c "https://pjreddie.com/media/files/yolov3.weights" --header "Referer: pjreddie.com"

# RUN apt-get update && \
#     apt-get -y install libopenblas-base libopenmpi-dev \
#     libcanberra-gtk-module libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev \
#     libavformat-dev libswscale-dev libatlas-base-dev && \
#     rm -rf /var/lib/apt/lists/*

RUN pip3 install Cython numpy matplotlib tensorboard pandas theano pillow \
    opencv-python pyyaml


