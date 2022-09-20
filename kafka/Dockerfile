FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=US/Central

RUN apt-get update && apt-get install -y supervisor vim iputils-ping dnsutils
 
WORKDIR /usr/local

# git clone https://github.com/mkenjis/apache_binaries
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

COPY create_conf_files.sh .
RUN chmod +x create_conf_files.sh
 
COPY run_kafka.sh .
RUN chmod +x run_kafka.sh

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 9092

CMD ["/usr/bin/supervisord"]
