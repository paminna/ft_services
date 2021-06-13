FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add mysql mysql-client mariadb openrc --no-cache supervisor

COPY my.cnf /etc/mysql/
COPY supervisord.conf /etc/supervisord.conf
# COPY srcs/mysql/wordpress.sql /tools/wordpress.sql
EXPOSE 3306

COPY start.sh .
RUN chmod +x ./start.sh

VOLUME ["/var/lib"]
VOLUME ["/sys/fs/cgroup"]

CMD ["./start.sh"]