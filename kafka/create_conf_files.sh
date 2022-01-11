# server.properties
# =================
echo '# change this for each broker' >$KAFKA_HOME/config/server.properties
echo 'broker.id='${BROKER_ID} >>$KAFKA_HOME/config/server.properties
echo '# change this to the hostname of each broker' >>$KAFKA_HOME/config/server.properties
echo 'advertised.listeners=PLAINTEXT://'${HOSTNAME}':9092' >>$KAFKA_HOME/config/server.properties
echo '# The ability to delete topics' >>$KAFKA_HOME/config/server.properties
echo 'delete.topic.enable=true' >>$KAFKA_HOME/config/server.properties
echo '# Where logs are stored' >>$KAFKA_HOME/config/server.properties
echo 'log.dirs=/data/kafka' >>$KAFKA_HOME/config/server.properties
echo '# default number of partitions' >>$KAFKA_HOME/config/server.properties
echo 'num.partitions=8' >>$KAFKA_HOME/config/server.properties
echo '# default replica count based on the number of brokers' >>$KAFKA_HOME/config/server.properties
echo 'default.replication.factor=3' >>$KAFKA_HOME/config/server.properties
echo '# to protect yourself against broker failure' >>$KAFKA_HOME/config/server.properties
echo 'min.insync.replicas=2' >>$KAFKA_HOME/config/server.properties
echo '# logs will be deleted after how many hours' >>$KAFKA_HOME/config/server.properties
echo 'log.retention.hours=168' >>$KAFKA_HOME/config/server.properties
echo '# size of the log files' >>$KAFKA_HOME/config/server.properties
echo 'log.segment.bytes=1073741824' >>$KAFKA_HOME/config/server.properties
echo '# check to see if any data needs to be deleted' >>$KAFKA_HOME/config/server.properties
echo 'log.retention.check.interval.ms=300000' >>$KAFKA_HOME/config/server.properties
echo '# location of all zookeeper instances and kafka directory' >>$KAFKA_HOME/config/server.properties
echo 'zookeeper.connect=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181/kafka' >>$KAFKA_HOME/config/server.properties
echo '# timeout for connecting with zookeeper' >>$KAFKA_HOME/config/server.properties
echo 'zookeeper.connection.timeout.ms=6000' >>$KAFKA_HOME/config/server.properties
echo '# automatically create topics' >>$KAFKA_HOME/config/server.properties
echo 'auto.create.topics.enable=true' >>$KAFKA_HOME/config/server.properties

# zookeeper.properties
# ====================
echo '# the directory where the snapshot is stored.' >$KAFKA_HOME/config/zookeeper.properties
echo 'dataDir=/data/zookeeper' >>$KAFKA_HOME/config/zookeeper.properties
echo '# the port at which the clients will connect' >>$KAFKA_HOME/config/zookeeper.properties
echo 'clientPort=2181' >>$KAFKA_HOME/config/zookeeper.properties
echo '# setting number of connections to unlimited' >>$KAFKA_HOME/config/zookeeper.properties
echo 'maxClientCnxns=0' >>$KAFKA_HOME/config/zookeeper.properties
echo '# keeps a heartbeat of zookeeper in milliseconds' >>$KAFKA_HOME/config/zookeeper.properties
echo 'tickTime=2000' >>$KAFKA_HOME/config/zookeeper.properties
echo '# time for initial synchronization' >>$KAFKA_HOME/config/zookeeper.properties
echo 'initLimit=10' >>$KAFKA_HOME/config/zookeeper.properties
echo '# how many ticks can pass before timeout' >>$KAFKA_HOME/config/zookeeper.properties
echo 'syncLimit=5' >>$KAFKA_HOME/config/zookeeper.properties
echo '# define servers ip and internal ports to zookeeper' >>$KAFKA_HOME/config/zookeeper.properties
echo 'server.1=zookeeper1:2888:3888' >>$KAFKA_HOME/config/zookeeper.properties
echo 'server.2=zookeeper2:2888:3888' >>$KAFKA_HOME/config/zookeeper.properties
echo 'server.3=zookeeper3:2888:3888' >>$KAFKA_HOME/config/zookeeper.properties