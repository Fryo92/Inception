#!/bin/sh

sleep 10

if [ !  -r /var/www/wordpress/wp-config.php ]; then
    wp config create --allow-root \
        --dbname=$MYSQL_DATABASE \
        --dbuser=$MYSQL_USER \
        --dbpass=$MYSQL_PASSWORD \
        --dbhost=$mariadb:3306 --path='/var/www/wordpress'
fi        
if [ ! -r /run/php ]; then
    mkdir /run/php
fi
if [ ! -r /home/abiddane/data/wordpress ]; then
    mkdir -p /home/abiddane/data/wordpress
fi
/usr/sbin/php-fpm7.3 -F           
