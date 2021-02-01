ssh root@linux121  "/opt/hoult/servers/kafka-2.12/bin/kafka-server-$1.sh -daemon /opt/hoult/servers/kafka-2.12/config/server.properties"
ssh root@linux122  "/opt/hoult/servers/kafka-2.12/bin/kafka-server-$1.sh -daemon /opt/hoult/servers/kafka-2.12/config/server.properties"
ssh root@linux123  "/opt/hoult/servers/kafka-2.12/bin/kafka-server-$1.sh -daemon /opt/hoult/servers/kafka-2.12/config/server.properties"
