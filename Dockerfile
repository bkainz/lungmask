FROM nvidia/cuda:latest

WORKDIR /app

# Installing Python3 and Pip3
RUN apt-get update
RUN apt-get update && apt-get install -y python python-dev python3.7 python3.7-dev python3-pip virtualenv libssl-dev libpq-dev git build-essential libfontconfig1 libfontconfig1-dev
RUN pip3 install setuptools pip --upgrade --force-reinstall

# Installing lungmask
RUN pip3 install git+https://github.com/JoHof/lungmask
