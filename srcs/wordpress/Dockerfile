FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx openssl tar supervisor
# RUN apk add openssl

RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz
RUN tar -xzvf latest-ru_RU.tar.gz
RUN rm -rf latest-ru_RU.tar.gz

RUN  rm -rf wordpress/wp-config-sample.php
COPY wp-config-sample.php var/www/html/wordpress/wp-config-sample.php 
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 5050

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]