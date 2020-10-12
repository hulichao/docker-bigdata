## 从镜像构建容器
### 1.centos容器的启动
#### 1.2 普通启动
docker run -p 20:20 -d --name centos hoult/centos7:jdk8-ssh
#### 1.2 需要用到集群，且免密登录，又不想在容器内生成密码,需要指定ip，hostname,privelege
docker run -it -d --rm --name=linux121 -h linux121 --net zoo --ip 172.18.0.2 --privileged hoult/centos7:jdk8-ssh
docker run -it -d --rm --name=linux122 -h linux122 --net zoo --ip 172.18.0.3 --privileged hoult/centos7:jdk8-ssh
docker run -it -d --rm --name=linux123 -h linux123 --net zoo --ip 172.18.0.4 --privileged hoult/centos7:jdk8-ssh

### 2.hadoop启动
docker-compose -f docker-compose-hadoop.yml up -d


### dev的启动
docker run -it -d --rm --name=linux121 -h linux121 --net zoo --privileged hoult/linux121
docker run -it -d --rm --name=linux122 -h linux122 --net zoo --privileged hoult/linux122
docker run -it -d --rm --name=linux123 -h linux123 --net zoo --privileged hoult/linux123

## hue start
build/env/bin/supervisor