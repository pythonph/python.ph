FROM ubuntu:16.04

RUN mkdir -p /_build/
WORKDIR /_build/
ADD . /_build/

RUN apt-get update

RUN apt-get install -y \
    sudo \
    build-essential \
    python3-dev \
    python3-pip \
    openssh-server

RUN make create_user

RUN mkdir /var/run/sshd

RUN rm -Rf /_build/
