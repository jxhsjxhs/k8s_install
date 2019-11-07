systemctl   stop firewalld && systemctl   disable  firewalld
swapoff -a
sed -i 's#SELINUX=enforcing#SELINUX=disabled#' /etc/selinux/config
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum -y install docker-ce-18.06.0.ce-3.el7  vim wget  tcpdump nload
iptables -P FORWARD ACCEPT
echo "{"registry-mirrors": ["http://0503026c.m.daocloud.io"]}" > /etc/docker/daemon.json
systemctl start docker && systemctl enable docker
