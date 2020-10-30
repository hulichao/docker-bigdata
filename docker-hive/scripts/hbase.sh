#!/bin/sh
echo "start/stop hbase server..."
if(($#==0));then
echo "no params";
exit;
fi
hosts="linux121 linux122 linux123"
for host in $hosts
do
echo ================= $host ==================
echo ssh root@$host "source /etc/profile && /opt/hoult/servers/hbase-1.3.1/bin/${1}-hbase.sh"

ssh root@$host "source /etc/profile && /opt/hoult/servers/hbase-1.3.1/bin/${1}-hbase.sh"
done