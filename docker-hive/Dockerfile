FROM hoult/docker-hadoop:2.7.7-jdk8

MAINTAINER hulichao <whu_hlc@163.com>

ENV HIVE_HOME=/usr/local/hive

RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/hive/hive-1.2.2/apache-hive-1.2.2-bin.tar.gz && \
     tar -zvxf apache-hive-1.2.2-bin.tar.gz -C /usr/local/ && \
     mv /usr/local/apache-hive-1.2.2-bin /usr/local/hive && \
     rm apache-hive-1.2.2-bin.tar.gz

RUN wget https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-8.0.15-1.el7.noarch.rpm && \
    rpm2cpio mysql-connector-java-8.0.15-1.el7.noarch.rpm | cpio -div &&\
    mv ./usr/share/java/mysql-connector-java-8.0.15.jar  $HIVE_HOME/lib/ && \
    rm -rf mysql-connector-java-8.0.15-1.el7.noarch.rpm ./usr/share/doc/mysql-connector-java-8.0.15

RUN mkdir -p /usr/hive/warehouse && mkdir -p /usr/hive/log

ENV PATH=$PATH:$HIVE_HOME/bin:.

 
     
