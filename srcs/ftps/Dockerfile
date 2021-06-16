FROM 	alpine:3.12

RUN 	apk update && apk upgrade
RUN 	apk add supervisor vsftpd openssl
# RUN apk add vsftpd-doc

RUN 	apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache
RUN 	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/ftps.key \
    	-out /etc/ssl/certs/ftps.crt -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=School/CN=paminna"

COPY ./supervisord.conf /etc/supervisord.conf
RUN 	mv	./srcs/vsftpd.conf ./etc/vsftpd/vsftpd.conf

EXPOSE 	21

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]