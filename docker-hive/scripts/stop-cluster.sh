## 启动hdfs和yarn
ssh root@linux121 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/stop-dfs.sh && sbin/mr-jobhistory-daemon.sh stop historyserver"
ssh root@linux123 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/stop-yarn.sh"
ssh root@linux121 "/opt/hoult/servers/hbase-1.3.1/bin/stop-hbase.sh"
ssh root@linux121 "/opt/hoult/servers/scripts/zk.sh stop"
ssh root@linux121 "redis-cli shutdown"

#ssh root@linux121 "/opt/hoult/servers/hive-2.3.7/bin/schematool -dbType mysql -initSchema"

