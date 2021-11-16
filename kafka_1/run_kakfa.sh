export JAVA_HOME=/usr/local/jre1.8.0_181
export CLASSPATH=$JAVA_HOME/lib
export PATH=$PATH:.:$JAVA_HOME/bin

export KAFKA_HOME=/usr/local/kafka_2.11-2.1.1
export PATH=$PATH:$KAFKA_HOME/bin

cat $KAFKA_HOME/config/server.properties.template | sed "s/localhost:2181/zkpr:2181/g" >$KAFKA_HOME/config/server.properties
echo "" >>$KAFKA_HOME/config/server.properties
echo "port=9092" >>$KAFKA_HOME/config/server.properties
echo "advertised.host.name = localhost" >>$KAFKA_HOME/config/server.properties

kafka-server-start.sh $KAFKA_HOME/config/server.properties >/tmp/kafka.log