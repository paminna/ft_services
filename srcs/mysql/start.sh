#!/bin/sh

openrc default
/etc/init.d/mariadb setup
rc-service mariadb start

mysql -e "CREATE DATABASE wordpress"
mysql -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'password';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'%' IDENTIFIED BY 'password';"
mysql -e "FLUSH PRIVILEGES;"
mysql wordpress < /home/wordpress.sql

/usr/bin/supervisord -c /etc/supervisord.conf

sh