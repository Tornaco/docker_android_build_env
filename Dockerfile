FROM ubuntu:xenial

MAINTAINER tornaco tornaco@163.com

ADD sources.list /etc/apt/sources.list
RUN apt-get update

# Wiki@LineageOS
RUN apt-get install -y vim bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev

RUN apt-get install -y python2.7

RUN ln -sf /usr/bin/python2.7 /usr/bin/python

RUN apt-get install -y bc
ENV USER=root