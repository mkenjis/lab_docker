FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=US/Central

RUN apt-get update && apt-get install -y supervisor openssh-server openssh-client vim iputils-ping
 
WORKDIR /usr/local

# git clone https://github.com/mkenjis/apache_binaries
ADD jre-8u181-linux-x64.tar.gz .
# wget https://archive.apache.org/dist/spark/spark-2.3.2/spark-2.3.2-bin-hadoop2.7.tgz
ADD spark-2.3.2-bin-hadoop2.7.tgz .
ADD zeppelin-0.9.0-bin-netinst.tgz .

WORKDIR /root
RUN echo "" >>.bashrc \
 && echo 'export JAVA_HOME=/usr/local/jre1.8.0_181' >>.bashrc \
 && echo 'export CLASSPATH=$JAVA_HOME/lib' >>.bashrc \
 && echo 'export PATH=$PATH:.:$JAVA_HOME/bin' >>.bashrc \
 && echo "" >>.bashrc \
 && echo 'export ZEPPL_HOME=/usr/local/zeppelin-0.9.0-bin-netinst' >>.bashrc \
 && echo 'export PATH=$PATH:$ZEPPL_HOME/bin' >>.bashrc
 && echo 'export USE_HADOOP=false' >>.bashrc

COPY run_zeppl.sh .
RUN chmod +x run_zeppl.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080

CMD ["/usr/bin/supervisord"]