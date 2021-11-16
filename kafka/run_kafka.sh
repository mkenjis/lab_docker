export JAVA_HOME=/usr/local/jre1.8.0
export CLASSPATH=$JAVA_HOME/lib
export PATH=$PATH:.:$JAVA_HOME/bin

export KAFKA_HOME=/usr/local/kafka_2.11
export PATH=$PATH:$KAFKA_HOME/bin

nohup /usr/local/kafka_2.11/bin/zookeeper-server-start.sh /usr/local/kafka_2.11/config/zookeeper.properties &

/usr/local/kafka_2.11/bin/kafka-server-start.sh /usr/local/kafka_2.11/config/server.properties > /usr/local/kafka_2.11/kafka.log 2>&1 &