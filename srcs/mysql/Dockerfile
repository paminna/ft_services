FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add mysql mysql-client openrc supervisor

COPY my.conf /etc/mysql/my.cnf.orig
COPY start.sh .
COPY supervisord.conf /etc/supervisord.conf
# COPY srcs/mysql/wordpress.sql /tools/wordpress.sql
RUN chmod +x ./start.sh

EXPOSE 3306

CMD ["./start.sh"]