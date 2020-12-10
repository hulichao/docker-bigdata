# JAVA_HOME
export JAVA_HOME=/opt/hoult/servers/jdk1.8.0_151
export PATH=$PATH:$JAVA_HOME/bin

# HADOOP_HOME
export HADOOP_HOME=/opt/hoult/servers/hadoop-2.9.2
export PATH=$PATH:$HADOO_HOME/bin:$HADOOP_HOME:sbin

export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

# HIVE_HOME
export HIVE_HOME=/opt/hoult/servers/hive-2.3.7
export PATH=$PATH:$HIVE_HOME/bin

# hbase
export HBASE_HOME=/opt/hoult/servers/hbase-1.3.1
export PATH=$PATH:$HBASE_HOME/bin

# Kafka
export KAFKA_HOME=/opt/hoult/servers/kafka-2.12
export PATH=$KAFKA_HOME/bin/:$PATH

# Zookeeper
export ZK_HOME=/opt/hoult/servers/zookeeper-3.4.14
export PATH=$ZK_HOME/bin:$PATH

# Flume
export FLUME_HOME=/opt/hoult/servers/flume-1.9.0
export PATH=$FLUME_HOME/bin:$PATH

## TEZ-jar
export TEZ_CONF_DIR=$HADOOP_CONF_DIR
export TEZ_JARS=/opt/hoult/servers/tez-0.9.2/*:/opt/hoult/servers/tez-0.9.2/lib/*
export HADOOP_CLASSPATH=$TEZ_CONF_DIR:$TEZ_JARS:$HADOOP_CLASSPATH
