# docker-bigdata
>使用docker构建大数据开发环境，包括zk, kafka, hadoop, hive, spark, hbase等.

## 镜像相关介绍
### 1、镜像环境

* 系统：centos 7
* Java ：java8
* Hadoop: 2.7.7
* python : 2.7.5
* hive: 1.2.2
* spark: 2.4.4
* mysql: 5.7

### 2、镜像描述

* hoult/centos7：jdk8-ssh        openssh、java8，基础镜像
* hoult/docker-hadoop:2.7.7-jdk8    hadoop基础镜像
* hoult/docker-hive:1.2.2   基于hadoop基础镜像
* hoult/docker-spark:2.4.4  基于hive的镜像
* hoult/mysql:5.7  mysql5.7版本

### 3、QuickStart
1. /usr/local/hadoop/bin/hdfs namenode -format
2. /usr/local/hadoop/sbin/start-all.sh
3. hive --service metastore
4. spark-sql -Phive -Phive-thriftserver (启动spark时候的conf 里面的hive-site.xml 会覆盖hive原本的配置属性)

**注意**：hoult/docker-hadoop:2.7.7-jdk8, hoult/docker-hive:1.2.2, hoult/docker-spark:2.4.4只可以按需求启动其中的一个，hoult/mysql:5.7是hive的元数据库，如果用到hive，需要先启动此镜像容器
metastore服务默认关闭，启动任意一个镜像都需要先format和启动hadoop集群.

## 待修复问题
1. spark-sql还用不了
2. hive 默认文件file改为集群