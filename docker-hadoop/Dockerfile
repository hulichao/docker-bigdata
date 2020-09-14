FROM hoult/centos7:jdk8-ssh
MAINTAINER hulichao <whu_hlc@163.com>
LABEL hadoop.version="2.9.2"
RUN yum -y install which && yum clean all

#下载Hadoop
# 官方库：https://archive.apache.org/dist/hadoop/common/hadoop-2.9.2/
# 国内镜像（有些版本没有）https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common
RUN mkdir -p /opt/hoult/servers && \
    mkdir -p /opt/hoult/software && \
    wget https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz && \
    mv hadoop-2.9.2.tar.gz /opt/hoult/software/ && \
    tar -zvxf /opt/hoult/software/hadoop-2.9.2.tar.gz -C /opt/hoult/servers && \
    chown -R root:root /opt/hoult/servers/hadoop-2.9.2 && \
    chmod -R 777 /opt/hoult/servers/hadoop-2.9.2

ENV HADOOP_HOME /opt/hoult/servers/hadoop-2.9.2
ENV HADOOP_PREFIX /opt/hoult/servers/hadoop-2.9.2
ENV HADOOP_COMMON_HOME /opt/hoult/servers/hadoop-2.9.2
ENV HADOOP_HDFS_HOME /opt/hoult/servers/hadoop-2.9.2
ENV HADOOP_MAPRED_HOME /opt/hoult/servers/hadoop-2.9.2
ENV HADOOP_YARN_HOME /opt/hoult/servers/hadoop-2.9.2
ENV HADOOP_CONF_DIR /opt/hoult/servers/hadoop-2.9.2/etc/hadoop
ENV YARN_CONF_DIR $HADOOP_PREFIX/etc/hadoop

ENV PATH $HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
