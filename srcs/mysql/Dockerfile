FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add mysql mysql-client openrc

COPY my.conf /etc/mysql/my.cnf
