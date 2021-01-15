systemctl   stop firewalld && systemctl   disable  firewalld
swapoff -a
sed -i 's#SELINUX=enforcing#SELINUX=disabled#' /etc/selinux/config
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum -y install docker-ce-19.03.9-3.el7  vim wget  tcpdump nload
iptables -P FORWARD ACCEPT
systemctl restart docker 
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f1361db2.m.daocloud.io
systemctl restart docker 
