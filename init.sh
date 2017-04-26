#!/bin/bash
chmod 755 /etc/ppp/ip-up.d/000ppp0
pptpsetup --create pptp --server "$1" --username "$2" --password "$3"
pon pptp persist
echo "11111"
nodejs /proxy.js