FROM debian:bullseye

RUN apt update -y
RUN apt upgrade -y
RUN apt install wget -y

RUN apt install -y php7.4 \
php-fpm \
php-mysql \
mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress

COPY conf/conf.php /conf.php

RUN chmod 755 /conf.php

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY /tools/run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]