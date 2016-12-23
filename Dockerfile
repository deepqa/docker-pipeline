FROM ubuntu:16.04
MAINTAINER Rakebul Hasan

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh


# basic stuff
RUN apt-get update && apt-get install -y -q --no-install-recommends \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        python \
        rsync \
        ssh \
        software-properties-common \
        wget \
        python-pip \
    && rm -rf /var/lib/apt/lists/*

Run add-apt-repository main
RUN add-apt-repository universe
RUN add-apt-repository restricted
RUN add-apt-repository multiverse

# project specific
RUN apt-get update && apt-get install -y -q virtualenv python2.7-dev libssl-dev python-setuptools && rm -rf /var/lib/apt/lists/*
