FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx openssl tar supervisor openrc
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli
RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN	rc-update add php-fpm7 default

WORKDIR var/www/

RUN mkdir -p /run/nginx

RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz
RUN tar -xzvf latest-ru_RU.tar.gz
RUN rm -rf latest-ru_RU.tar.gz
# RUN mv latest-ru_RU wordpress

RUN  rm -rf wordpress/wp-config-sample.php
COPY wp-config.php /var/www/wordpress/wp-config.php 
COPY supervisord.conf /etc/supervisord.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 5050

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]