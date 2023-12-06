#!/bin/sh

sleep 10

if [ ! wp-config.php ]; then
    wp config create	--allow-root \
                --dbname=$SQL_DATABASE \
                --dbuser=$SQL_USER \
                --dbpass=$SQL_PASSWORD \
                --dbhost=mariadb:3306 --path='/var/www/wordpress'

fi

if [ ! /run/php ]; then
   mkdir -p /run/php

fi

# wp core install --allow-root --title=Example --admin_user="${WP_ADMIN}" --admin_password="${WP_ADMIN_PASSWORD}" --admin_email="${WP_ADMIN_EMAIL}"
# wp user create bob bob@example.com --allow-root --user_pass="${WP_USER_PASS}"