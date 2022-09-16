export JAVA_HOME=/usr/local/jre1.8.0_181
export CLASSPATH=$JAVA_HOME/lib
export PATH=$PATH:.:$JAVA_HOME/bin

export KAFKA_HOME=/usr/local/kafka_2.11-2.1.1
export PATH=$PATH:$KAFKA_HOME/bin


mkdir -p $KAFKA_HOME/data
   
if [ -n "${BROKER_ID}" ]; then

   echo ${BROKER_ID} > $KAFKA_HOME/data/myid

   create_conf_files.sh

   zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties 2>&1 >/root/zkp.log &

   kafka-server-start.sh $KAFKA_HOME/config/server.properties 2>&1 >/root/kfk.log &
   
fi