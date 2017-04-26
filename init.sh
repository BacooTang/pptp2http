#!/bin/bash
set +x
umask 022
mkdir -p /data
chmod 755 /etc/ppp/ip-up.d/000ppp0
pptpsetup --create pptp --server "$1" --username "$2" --password "$3"
# exec pppd call pptp persist nodetach debug &
pon pptp persist
# nodejs /proxy.js
ping baidu.com