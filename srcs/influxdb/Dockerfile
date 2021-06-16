FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add  openrc --no-cache supervisor influxdb

RUN wget -qO- https://repos.influxdata.com/influxdb.key | gpg --dearmor > /etc/apt/trusted.gpg.d/influxdb.gpg