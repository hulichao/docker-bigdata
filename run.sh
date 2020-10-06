## 从镜像构建容器
###centos容器的启动
#### 创建子网zoo,如果存在请先删除
docker network rm zoo
docker network create --gateway 172.18.0.1 --subnet 172.18.0.0/16 zoo
#### 需要指定ip，hostname,privelege
docker run -it -d --rm --name=linux121 -h linux121 --net zoo --ip 172.18.0.2 --privileged hoult/centos7:jdk8-ssh
docker run -it -d --rm --name=linux122 -h linux122 --net zoo --ip 172.18.0.3 --privileged hoult/centos7:jdk8-ssh
docker run -it -d --rm --name=linux123 -h linux123 --net zoo --ip 172.18.0.4 --privileged hoult/centos7:jdk8-ssh

