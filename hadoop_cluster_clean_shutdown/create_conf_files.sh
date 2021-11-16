# core-site.xml (HADOOP e SPARK)
# =============
echo '<configuration>' >$HADOOP_HOME/etc/hadoop/core-site.xml
echo '  <property>' >>$HADOOP_HOME/etc/hadoop/core-site.xml
echo '    <name>fs.default.name</name>' >>$HADOOP_HOME/etc/hadoop/core-site.xml
echo '    <value>hdfs://'${HOSTNAME}':9000</value>' >>$HADOOP_HOME/etc/hadoop/core-site.xml
echo '  </property>' >>$HADOOP_HOME/etc/hadoop/core-site.xml
echo '  <property>' >>$SPARK_HOME/conf/core-site.xml
echo '    <name>dfs.permissions</name>' >>$SPARK_HOME/conf/core-site.xml
echo '    <value>false</value>' >>$SPARK_HOME/conf/core-site.xml
echo '  </property>' >>$SPARK_HOME/conf/core-site.xml
echo '</configuration>' >>$HADOOP_HOME/etc/hadoop/core-site.xml

# hdfs-site.xml (HADOOP e SPARK)
# =============
echo '<configuration>' >$HADOOP_HOME/etc/hadoop/hdfs-site.xml

echo '  <property>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <name>dfs.replication</name>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <value>1</value>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '  </property>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml

echo '  <property>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <name>dfs.name.dir</name>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <value>/data/hadoop/hdfs/namenode</value>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <final>true</final>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '  </property>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml

echo '  <property>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <name>dfs.data.dir</name>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <value>/data/hadoop/hdfs/datanode</value>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '    <final>true</final>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml
echo '  </property>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml

echo '</configuration>' >>$HADOOP_HOME/etc/hadoop/hdfs-site.xml

# mapred-site.xml (HADOOP)
# ===============
echo '<configuration>' >$HADOOP_HOME/etc/hadoop/mapred-site.xml
echo '  <property>' >>$HADOOP_HOME/etc/hadoop/mapred-site.xml
echo '    <name>mapred.job.tracker</name>' >>$HADOOP_HOME/etc/hadoop/mapred-site.xml
echo '    <value>'${HOSTNAME}':9001</value>' >>$HADOOP_HOME/etc/hadoop/mapred-site.xml
echo '  </property>' >>$HADOOP_HOME/etc/hadoop/mapred-site.xml
echo '</configuration>' >>$HADOOP_HOME/etc/hadoop/mapred-site.xml

# hadoop-env.sh (HADOOP)
# =============
echo 'export JAVA_HOME=/usr/local/jre1.8.0_181' >$HADOOP_HOME/etc/hadoop/hadoop-env.sh
echo 'export HADOOP_OPTS=-Djava.net.preferIPv4Stack=true' >>$HADOOP_HOME/etc/hadoop/hadoop-env.sh
echo 'export HADOOP_CONF_DIR='${HADOOP_HOME}'/etc/hadoop' >>$HADOOP_HOME/etc/hadoop/hadoop-env.sh
chmod +x $HADOOP_HOME/etc/hadoop/hadoop-env.sh
