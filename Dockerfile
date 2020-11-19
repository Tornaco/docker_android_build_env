FROM ubuntu:xenial

MAINTAINER tornaco tornaco@163.com

ADD sources.list /etc/apt/sources.list
ADD repo_sync.sh repo_sync.sh

RUN apt-get update

# Wiki@LineageOS
# Install deps
RUN apt-get install -y python3 vim bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev

# Python
RUN apt-get install -y python2.7
RUN ln -sf /usr/bin/python2.7 /usr/bin/python

# Repo
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /bin/repo
RUN chmod a+x /bin/repo

# Git
RUN git config --global user.email "you@example.com"
RUN git config --global user.name "Your Name"


ENV USER=root
