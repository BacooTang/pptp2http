#FROM hub.c.163.com/public/ubuntu:14.04
FROM ubuntu:trusty
MAINTAINER bacootang@gmail.com
#RUN rm /etc/apt/sources.list
#ADD sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y pptp-linux nodejs && ln -sf /bin/true /sbin/modprobe
ADD init.sh /
ADD proxy.js /
ADD 000ppp0 /etc/ppp/ip-up.d/
