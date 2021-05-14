FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx 
RUN apk add openssl
RUN mkdir -p /run/nginx


COPY ./scrypt.sh .

COPY ./nginx.conf /etc/nginx/conf.d/default.conf


RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl"

EXPOSE 80 443
RUN chmod +x ./scrypt.sh
# RUN chmod +x ./autoindex.sh

CMD [ "./scrypt.sh" ]