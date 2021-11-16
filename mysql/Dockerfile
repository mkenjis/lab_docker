FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=US/Central

RUN apt-get update && apt-get install -y mysql-server supervisor vim

RUN mkdir /nonexistent

EXPOSE 3360

WORKDIR /root
COPY run_mysql.sh .
RUN chmod +x run_mysql.sh

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]