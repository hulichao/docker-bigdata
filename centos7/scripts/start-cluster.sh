## 启动hdfs和yarn
ssh root@linux121 "cd /opt/hoult/servers/hadoop-2.9.2/ && bin/hadoop namenode -format "
ssh root@linux121 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/start-dfs.sh && sbin/mr-jobhistory-daemon.sh start historyserver"
ssh root@linux123 "cd /opt/hoult/servers/hadoop-2.9.2/ && sbin/start-yarn.sh"