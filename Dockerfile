FROM tensorflow/tensorflow:1.9.0-devel-py3

RUN apt-get update -y

RUN apt-get install -y libsm6 libxext6

RUN apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libjasper-dev \
        libavformat-dev \
        libhdf5-dev 

RUN pip install --upgrade pip

ADD requirements.txt /usr/src/requirements.txt

RUN pip install -r /usr/src/requirements.txt

RUN apt-get install -y iputils-ping telnet