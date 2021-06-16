FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add openrc --no-cache supervisor influxdb
RUN apk add tar

RUN mkdir -p /etc/telegraf 
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
# RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk
# RUN apk add glibc-2.33-r0.apk
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.1_linux_amd64.tar.gz
RUN tar -zxvf telegraf-1.18.1_linux_amd*64.tar.gz && rm telegraf-1.18.1_linux_amd*64.tar.gz
# RUN mv telegraf-1.18.1_linux_amd*64 telegraf

RUN mv telegraf.conf /etc/telegraf/telegraf.conf
COPY ./supervisord.conf /etc/supervisord.conf

EXPOSE 8086

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
