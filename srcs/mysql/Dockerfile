FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add mysql mysql-client mariadb openrc --no-cache supervisor

COPY my.conf /etc/mysql/
COPY supervisord.conf /etc/supervisord.conf
# COPY srcs/mysql/wordpress.sql /tools/wordpress.sql
EXPOSE 3306

COPY start.sh .
RUN chmod +x ./start.sh


CMD ["./start.sh"]