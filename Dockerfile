FROM tensorflow/tensorflow:1.9.0-devel-py3

RUN apt-get update -y

RUN apt-get install -y libsm6 libxext6

RUN pip install --upgrade pip

ADD requirements.txt /usr/src/requirements.txt

RUN pip install -r /usr/src/requirements.txt