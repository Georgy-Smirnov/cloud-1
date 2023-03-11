FROM debian:bullseye
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget php7.4 php7.4-fpm php7.4-mysql
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-all-languages.tar.gz && \
    wget https://wordpress.org/latest.tar.gz && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN tar -xf phpMyAdmin-5.2.0-all-languages.tar.gz && rm -f phpMyAdmin-5.2.0-all-languages.tar.gz && \
    tar -xf latest.tar.gz
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/html && mkdir /run/php
RUN mv wordpress/* /var/www/html/ && mv phpMyAdmin-5.2.0-all-languages/ /var/www/html/phpmyadmin/
RUN cp /var/www/html/phpmyadmin/config.sample.inc.php /var/www/html/phpmyadmin/config.inc.php 

RUN touch /run/php/php7.4-fpm.pid

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "docker-entrypoint.sh" ]
EXPOSE 9000
CMD ["php-fpm7.4", "--nodaemonize"]