conf=$KAFKA_DIR/config/server.properties

sed -i "s|broker.id=0|broker.id=${BROKER_ID:-1}|g" $conf
sed -i "s|#delete.topic.enble=true|delete.topic.enble=true|g" $conf
sed -i "s|log.dirs=/tmp/kafka-logs|log.dirs=${KAFKA_DATA_DIR}|g" $conf
sed -i "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=PLAINTEXT://${KAFKA_HOST}:${KAFKA_PORT:-9092}|g" $conf
sed -i "s|zookeeper.connect=localhost:2181|zookeeper.connect=${ZOOKEEPER_HOST}:${ZOOKEEPER_PORT:-2181}|g" $conf

sh kafka-server-start.sh $conf