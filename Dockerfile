FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx 
RUN apk add openssl 
RUN mkdir -p /run/nginx

# WORKDIR var/www/html

# RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz
# RUN wget  https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz
# RUN tar -xzvf latest-ru_RU.tar.gz && tar -xzvf phpMyAdmin-5.1.0-all-languages.tar.gz
# RUN rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz && rm -rf latest-ru_RU.tar.gz
# RUN mv phpMyAdmin-5.1.0-all-languages phpMyAdmin

# COPY srcs/wp-config.php wordpress/
# COPY srcs/config.sample.inc.php phpMyAdmin/
COPY srcs/scrypt.sh .
# COPY srcs/autoindex.sh .
COPY srcs/nginx.conf /etc/nginx/conf.d/default.conf

# RUN rm -f /etc/nginx/sites-enabled/default && rm -f /etc/nginx/sites-available/default
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl"

EXPOSE 80 443
RUN chmod +x ./scrypt.sh
# RUN chmod +x ./autoindex.sh

CMD [ "./scrypt.sh" ]