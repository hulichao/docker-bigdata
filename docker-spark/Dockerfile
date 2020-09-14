FROM hoult/docker-hive:1.2.2

MAINTAINER hulichao <whu_hlc@163.com>

ENV SPARK_HOME=/usr/local/spark
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin:.

ENV JAVA_HOME /usr/local/jdk1.8
ENV PATH $JAVA_HOME/bin:$PATH

RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.4.4/spark-2.4.4-bin-without-hadoop.tgz && \
    tar -xzvf spark-2.4.4-bin-without-hadoop.tgz -C /usr/local/ && \
    mv /usr/local/spark-2.4.4-bin-without-hadoop /usr/local/spark && \
    rm -rf spark-2.4.4-bin-without-hadoop.tgz
