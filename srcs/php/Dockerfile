FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx tar
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli
RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session && apk add nginx openssl supervisor
RUN     mkdir -p /run/nginx

WORKDIR var/www/html

RUN wget  https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz
RUN tar -xzvf phpMyAdmin-5.1.0-all-languages.tar.gz
RUN rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz
RUN mv phpMyAdmin-5.1.0-all-languages phpMyAdmin

RUN rm -rf phpMyAdmin/config.sample.inc.php
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY config.sample.inc.php phpMyAdmin/
COPY ./supervisord.conf /etc/supervisord.conf

EXPOSE 5000

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]