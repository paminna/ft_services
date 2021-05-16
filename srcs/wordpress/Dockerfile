FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx openssl tar
# RUN apk add openssl

RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz
RUN tar -xzvf latest-ru_RU.tar.gz
RUN rm -rf latest-ru_RU.tar.gz

RUN rm -rf wordpress/wp-config-sample.php
COPY config.sample.inc.php wordpress/

CMD ["/usr/bin/supervisord -c /etc/supervisord.conf"]