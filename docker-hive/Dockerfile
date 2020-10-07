FROM hoult/docker-hadoop:2.9.2

MAINTAINER hulichao <whu_hlc@163.com>

ENV HIVE_HOME=/opt/hoult/servers/hive-2.3.7

RUN  wget https://mirrors.tuna.tsinghua.edu.cn/apache/hive/hive-2.3.7/apache-hive-2.3.7-bin.tar.gz -P /opt/hoult/software && \
     tar -zvxf /opt/hoult/software/apache-hive-2.3.7-bin.tar.gz -C /opt/hoult/servers/ && \
     mv /opt/hoult/servers/apache-hive-2.3.7-bin /opt/hoult/servers/hive-2.3.7 && \
     rm /opt/hoult/software/apache-hive-2.3.7-bin.tar.gz

## volumn 的写权限
RUN chmod 777 -R /opt/hoult/servers/hive-2.3.7
# 从网上下载或者自行添加，选一种,(删掉了，单独安装mysql吧)
#ADD mysql-5.7.26-1.el7.x86_64.rpm-bundle.tar /opt/hoult/software
#RUN yum install perl -y && \
#    yum install net-tools -y && \
##    wget https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.26-1.el7.x86_64.rpm-bundle.tar -P /opt/hoult/software && \
#    rpm -ivh mysql-community-common-5.7.26-1.el7.x86_64.rpm && \
#    rpm -ivh mysql-community-libs-5.7.26-1.el7.x86_64.rpm && \
#    rpm -ivh mysql-community-client-5.7.26-1.el7.x86_64.rpm && \
#    rpm -ivh mysql-community-server-5.7.26-1.el7.x86_64.rpm && \
#    rm /opt/hoult/software/mysql-5.7.26-1.el7.x86_64.rpm-bundle.tar


## 网上下载或者本地添加
ADD mysql-connector-java-5.1.46.jar $HIVE_HOME/lib/

RUN mkdir -p /usr/hive/warehouse && mkdir -p /usr/hive/log

ENV PATH=$PATH:$HIVE_HOME/bin:.

ENV HIVE_HOME=/opt/hoult/servers/hive-2.3.7
     
ENV PATH $HIVE_HOME/bin:$PATH