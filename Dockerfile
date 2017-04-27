FROM ubuntu:trusty
MAINTAINER bacootang@gmail.com
#RUN rm /etc/apt/sources.list
#ADD sources.list /etc/apt/
RUN echo "deb http://archive.ubuntu.com/ubuntu/ trusty-backports main restricted" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y pptp-linux squid3 nodejs curl && \
    apt-get install -t trusty-backports jq && \
    ln -sf /bin/true /sbin/modprobe && \
    echo "200 squid" >> /etc/iproute2/rt_tables
RUN apt-get install npm -y && npm install n pm2 -g && n stable
ADD init.sh /
ADD proxy.js /
ADD 000ppp0 /etc/ppp/ip-up.d/
