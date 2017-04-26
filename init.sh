#!/bin/bash
chmod 755 /etc/ppp/ip-up.d/000ppp0
pptpsetup --create pptp --server "$1" --username "$2" --password "$3" --start
# pon pptp persist
# nodejs /proxy.js