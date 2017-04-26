#!/bin/bash
chmod 755 /etc/ppp/ip-up.d/000ppp0
echo '1111111'
pptpsetup --create pptp --server "$1" --username "$2" --password "$3" --start &
# pon pptp persist
# nodejs /proxy.js
echo '1111111'
sleep 10
echo '1111111'
curl 'http://fucku.sh.1251900689.clb.myqcloud.com/ip'