#!/bin/sh

cat > /etc/ppp/peers/pptp <<_EOF_
pty "pptp ${1} --nolaunchpppd"
name "${2}"
password "${3}"
remotename PPTP
require-mppe-128
file /etc/ppp/options.pptp
ipparam "pptp"
_EOF_

cat > /etc/ppp/ip-up <<"_EOF_"
#!/bin/sh
ip route add 0.0.0.0/1 dev $1
ip route add 128.0.0.0/1 dev $1
_EOF_

cat > /etc/ppp/ip-down <<"_EOF_"
#!/bin/sh
ip route del 0.0.0.0/1 dev $1
ip route del 128.0.0.0/1 dev $1
_EOF_

exec pppd call pptp persist nodetach debug &
node /proxy.js