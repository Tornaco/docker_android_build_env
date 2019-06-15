FROM ubuntu:xenial

MAINTAINER tornaco tornaco@163.com

ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk

# Wiki@LineageOS
RUN apt-get install -y git-core gnupg flex bison gperf build-essential \
zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
libgl1-mesa-dev libxml2-utils xsltproc unzip

RUN apt-get install -y python2.7

RUN ln -sf /usr/bin/python2.7 /usr/bin/python

RUN apt-get install -y bc
ENV USER=root