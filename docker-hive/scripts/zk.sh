#!/bin/sh
echo "start zookeeper server..."
if(($#==0));then
echo "no params";
exit;
fi
hosts="linux121 linux122 linux123"
for host in $hosts
do
echo ================= $host ==================
echo ssh root@$host "source /etc/profile && /opt/hoult/servers/zookeeper-3.4.14/bin/zkServer.sh $1"

ssh root@$host "source /etc/profile && /opt/hoult/servers/zookeeper-3.4.14/bin/zkServer.sh $1"
done