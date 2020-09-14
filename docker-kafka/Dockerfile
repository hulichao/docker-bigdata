FROM hoult/centos7:jdk8-ssh

MAINTAINER hulichao <whu_hlc@163.com>

## https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.4.1/

#ADD ./kafka_2.11-2.4.1.tgz /opt

ADD ./start.sh /start.sh

ENV KAFKA_PORT=9092\
	KAFKA_DIR=/opt/kafka \
	KAFKA_DATA_DIR=/data/kafka

RUN echo "Asia/shanghai" > /etc/timezone \
    && wget -P /opt https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.4.1/kafka_2.11-2.4.1.tgz \
    && tar -zxvf /opt/kafka_2.11-2.4.1.tgz -C /opt \
	&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& mkdir -p $KAFKA_DATA_DIR \
	&& mv /opt/kafka_2.11-2.4.1 $KAFKA_DIR

EXPOSE $KAFKA_PORT

ENV PATH=$PATH:$KAFKA_DIR/bin

ENTRYPOINT ["sh", "/start.sh"]