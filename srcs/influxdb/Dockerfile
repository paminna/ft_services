FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add  openrc --no-cache supervisor influxdb

RUN wget -qO- https://repos.influxdata.com/influxdb.keyRUN && apk-key add -
RUN apk add influxdb
RUN mv telegraf.conf /etc/telegraf/telegraf.conf