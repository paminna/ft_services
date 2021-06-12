#!/bin/sh

rc default
/etc/init.d/mysql setup
rc-service mysql start

mysql -e "CREATE DATABASE Wordpress;"
mysql -e "CREATE USER 'user'@'%' IDENTIFIED BY '123';"
mysql -e "GRANT ALL PRIVILEGES ON Wordpress.* TO 'user'@'%' IDENTIFIED BY '123';"
mysql -e "FLUSH PRIVILEGES;"

# mysql wordpress < /home/wordpress.sql

/usr/bin/supervisord -c /etc/supervisord.conf

sh