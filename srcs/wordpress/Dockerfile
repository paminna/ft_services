FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx 
RUN apk add openssl

RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz
RUN tar -xzvf latest-ru_RU.tar.gz
RUN rm -rf latest-ru_RU.tar.gz

