## 启动hdfs和yarn
ssh root@linux121 "cd /opt/hoult/servers/hadoop-2.9.2/ && bin/hadoop namenode -format "
ssh root@linux121 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/start-dfs.sh && sbin/mr-jobhistory-daemon.sh start historyserver"
ssh root@linux123 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/start-yarn.sh"
ssh root@linux121 "/opt/hoult/servers/hive-2.3.7/bin/schematool -dbType mysql -initSchema" && \
## 远程模式启动hive的元数据服务
ssh root@linux121  "nohup /opt/hoult/servers/hive-2.3.7/bin/hive --service metastore &" && \
## 远程模式启动hive的元数据服务
ssh root@linux123  "nohup /opt/hoult/servers/hive-2.3.7/bin/hive --service metastore &"

