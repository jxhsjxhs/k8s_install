# k8s_install
准备写一个源码安装k8s的自动安装脚本，目前只测试在centos7中进行，后面如有需求会更新其他系统的支持。
内部整体用ansible playbook进行
主要步骤：
1.系统初始化
2.配置etcd集群（最少三台，可在slave节点安装）
3.配置master节点的证书和组件
4.配置slave节点的组件，将组件加入集群
