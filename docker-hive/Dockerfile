FROM hoult/docker-hadoop:2.9.2

MAINTAINER hulichao <whu_hlc@163.com>

ENV HIVE_HOME=/opt/hoult/servers/hive-2.3.7

RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/hive/hive-2.3.7/apache-hive-2.3.7-bin.tar.gz && \
     tar -zvxf apache-hive-2.3.7-bin.tar.gz -C /opt/hoult/servers/ && \
     mv /opt/hoult/servers/apache-hive-2.3.7-bin /opt/hoult/servers/hive-2.3.7 && \
     rm apache-hive-2.3.7-bin.tar.gz

RUN wget https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-8.0.15-1.el7.noarch.rpm && \
    rpm2cpio mysql-connector-java-8.0.15-1.el7.noarch.rpm | cpio -div &&\
    mv ./usr/share/java/mysql-connector-java-8.0.15.jar  $HIVE_HOME/lib/ && \
    rm -rf mysql-connector-java-8.0.15-1.el7.noarch.rpm ./usr/share/doc/mysql-connector-java-8.0.15

RUN mkdir -p /usr/hive/warehouse && mkdir -p /usr/hive/log

ENV PATH=$PATH:$HIVE_HOME/bin:.

 
     
