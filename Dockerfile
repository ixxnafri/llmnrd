FROM ubuntu:bionic

RUN apt-get -y update && apt-get -y install llmnrd && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /etc/apt/sources.list.d/*

