#!/bin/sh

openrc default
/etc/init.d/mysql setup
rc-service mysql start

mysql -e "CREATE DATABASE wordpress"
mysql -e "CREATE USER admin@'%' IDENTIFIED BY 'password';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'%';"
mysql -e "FLUSH PRIVILEGES;"
mysql wordpress < /home/wordpress.sql

/usr/bin/supervisord -c /etc/supervisord.conf

sh