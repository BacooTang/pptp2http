FROM alpine:edge
MAINTAINER bacootang@gmail.com

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ pptpclient
RUN apk update && apk upgrade
RUN apk add nodejs

ADD init.sh /
ADD proxy.js /