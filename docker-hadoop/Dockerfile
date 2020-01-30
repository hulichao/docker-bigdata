FROM hoult/centos-ssh-jdk
MAINTAINER hulichao <whu_hlc@163.com>
LABEL hadoop.version="2.7.7"
RUN yum -y install which && yum clean all

#下载Hadoop
# 官方库：https://archive.apache.org/dist/hadoop/common/hadoop-2.7.2/
# 国内镜像（有些版本没有）https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz && \
        tar -zvxf hadoop-2.7.7.tar.gz -C /usr/local/ && \
        mv /usr/local/hadoop-2.7.7 /usr/local/hadoop && \
        rm -rf hadoop-2.7.7.tar.gz

ENV HADOOP_HOME /usr/local/hadoop
ENV HADOOP_PREFIX /usr/local/hadoop
ENV HADOOP_COMMON_HOME /usr/local/hadoop
ENV HADOOP_HDFS_HOME /usr/local/hadoop
ENV HADOOP_MAPRED_HOME /usr/local/hadoop
ENV HADOOP_YARN_HOME /usr/local/hadoop
ENV HADOOP_CONF_DIR /usr/local/hadoop/etc/hadoop
ENV YARN_CONF_DIR $HADOOP_PREFIX/etc/hadoop

ENV PATH $HADOOP_HOME/bin:$PATH
