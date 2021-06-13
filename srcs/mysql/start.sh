#!/bin/sh

rc default
/etc/init.d/mariadb setup
rc-service mariadb start

mysql -e "CREATE DATABASE Wordpress;"
mysql -e "CREATE USER 'user'@'%' IDENTIFIED BY '123';"
mysql -e "GRANT ALL PRIVILEGES ON Wordpress.* TO 'user'@'%' IDENTIFIED BY '123';"
mysql -e "FLUSH PRIVILEGES;"
# mysql wordpress < /home/wordpress.sql

rc-service mariadb stop

/usr/bin/supervisord -c /etc/supervisord.conf