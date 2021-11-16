mkdir -p /home/kafka/data/zookeeper
echo 1 >/home/kafka/data/zookeeper/myid

export JAVA_HOME=/usr/local/jre1.8.0_181
export CLASSPATH=$JAVA_HOME/lib
export PATH=$PATH:.:$JAVA_HOME/bin

export KAFKA_HOME=/usr/local/kafka_2.11-2.1.1
export PATH=$PATH:$KAFKA_HOME/bin

echo "" >>$KAFKA_HOME/config/zookeeper.properties
echo "tickTime=2000" >>$KAFKA_HOME/config/zookeeper.properties
echo "initLimit=5" >>$KAFKA_HOME/config/zookeeper.properties
echo "syncLimit=2" >>$KAFKA_HOME/config/zookeeper.properties
echo "server.1=localhost:2666:3666" >>$KAFKA_HOME/config/zookeeper.properties

zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties >/tmp/zookeeper.log