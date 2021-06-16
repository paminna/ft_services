FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add wget supervisor


RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.5.5.linux-amd64.tar.gz
RUN tar -xzvf grafana-enterprise-7.5.5.linux-amd64.tar.gz
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk 
RUN apk add openrc glibc-2.31-r0.apk
RUN mkdir -p /run/nginx

COPY supervisord.conf /etc/supervisord.conf

WORKDIR grafana-7.5.5

EXPOSE 3000

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]