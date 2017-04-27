modprobe nf_conntrack_pptp nf_conntrack_proto_gre
docker build -t bacootang/testpptp . && docker run --privileged bacootang/testpptp /init.sh 7482782.ros2.chengshu.com jw1 1