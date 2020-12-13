## 启动hdfs和yarn
ssh root@linux121 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/start-dfs.sh && sbin/mr-jobhistory-daemon.sh start historyserver"
ssh root@linux123 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/start-yarn.sh"
# ssh root@linux121 "cd /opt/hoult/servers/hadoop-2.9.2/ && bin/hadoop namenode -format "

## 初始化hive元数据 && 远程模式启动hive的元数据服务
# ssh root@linux121 "/opt/hoult/servers/hive-2.3.7/bin/schematool -dbType mysql -initSchema" && \
#ssh root@linux121 "/opt/hoult/servers/scripts/zk.sh start"
#ssh root@linux121 "/opt/hoult/servers/hbase-1.3.1/bin/start-hbase.sh"
#ssh root@linux121 "redis-server /usr/redis/bin/redis.conf"
#ssh root@linux121  "nohup /opt/hoult/servers/hive-2.3.7/bin/hive --service metastore >> /dev/null &" && \
#ssh root@linux123  "nohup /opt/hoult/servers/hive-2.3.7/bin/hive --service metastore >> /dev/null &" && \
#ssh root@linux123  "nohup /opt/hoult/servers/hive-2.3.7/bin/hiveserver2 >> /dev/null &"

# 启动hue
#ssh root@linux122  "nohup /opt/hoult/servers/hue/build/env/bin/supervisor >> /dev/null &"


