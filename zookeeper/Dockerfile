FROM ubuntu

RUN apt-get update \
 && apt-get install -y supervisor vim

WORKDIR /usr/local
ADD jre-8u181-linux-x64.tar.gz .
ADD kafka_2.11-2.1.1.tgz .

WORKDIR /root
RUN echo "" >>.bashrc \
 && echo 'export JAVA_HOME=/usr/local/jre1.8.0_181' >>.bashrc \
 && echo 'export CLASSPATH=$JAVA_HOME/lib' >>.bashrc \
 && echo 'export PATH=$PATH:.:$JAVA_HOME/bin' >>.bashrc \
 && echo "" >>.bashrc \
 && echo 'export KAFKA_HOME=/usr/local/kafka_2.11-2.1.1' >>.bashrc \
 && echo 'export PATH=$PATH:$KAFKA_HOME/bin' >>.bashrc

COPY run_zkpr.sh .
RUN chmod +x run_zkpr.sh

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]