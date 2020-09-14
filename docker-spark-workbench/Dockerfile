FROM hoult/centos7:jdk8-ssh
MAINTAINER hulichao <whu_hlc@163.com>
LABEL hadoop.version="2.7.7"
LABEL spark.version="2.4.4"
RUN yum -y install which && yum clean all

# 下载Spark
# 官方库：https://archive.apache.org/dist/hadoop/common/hadoop-2.7.2/
# 国内镜像（有些版本没有）https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz && \
        mkdir -p /opt/modules && \
        tar -xvf spark-2.4.4-bin-hadoop2.7.tgz -C /opt/modules && \
        mv /opt/modules/spark-2.4.4-bin-hadoop2.7 /opt/modules/spark && \
        rm -rf spark-2.4.4-bin-hadoop2.7.tgz

