FROM ubuntu:16.04

RUN mkdir -p /_build/
WORKDIR /_build/
ADD . /_build/

RUN apt update -y

RUN apt install -y \
    sudo \
    curl \
    build-essential \
    python3-dev \
    python3-pip \
    openssh-server

RUN make create_user

RUN make setup_node

RUN mkdir /var/run/sshd

RUN rm -Rf /_build/
