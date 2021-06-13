FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk wget --no-cache add ca-certificates wget


RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-8.0.1.darwin-amd64.tar.gz
RUN tar -xzvf grafana-enterprise-8.0.1.darwin-amd64.tar.gz
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk
RUN apk add glibc-2.33-r0.apk

EXPOSE 3000

WORKDIR 