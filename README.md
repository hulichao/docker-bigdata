# docker-bigdata
# 使用docker构建大数据开发环境，包括zk, kafka, hadoop, hive, spark, hbase等

## 镜像相关介绍
##### 1、镜像环境

* 系统：centos 7
* Java ：java8
* Hadoop: 2.7.7
* python : 2.7.5

##### 2、镜像描述

* hoult/centos7：jdk8-ssh        openssh、java8，基础镜像
* hoult/docker-hadoop:2.7.7-jdk8    hadoop基础镜像
* hoult/docker-hive:1.2.2   基于hadoop基础镜像
* hoult/mysql:5.7  mysql5.7版本

##### 3.quickStart
1. bin/hdfs namenode -format
2. sbin/.start-all.sh


注意：hoult/docker-hadoop:2.7.7-jdk8, hoult/docker-hive:1.2.2只可以按需求启动其中的一个，hoult/mysql:5.7是hive的元数据库，如果用到hive，需要先启动此镜像容器
metastore服务默认关闭，启动任意一个镜像都需要先format和启动hadoop集群

