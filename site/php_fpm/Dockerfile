FROM debian:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget php7.4 php7.4-fpm php7.4-mysql
RUN sed -i "s/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g" /etc/php/7.4/fpm/pool.d/www.conf
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-all-languages.tar.gz && \
    wget https://wordpress.org/latest.tar.gz
RUN tar -xf phpMyAdmin-5.2.0-all-languages.tar.gz && rm -f phpMyAdmin-5.2.0-all-languages.tar.gz && \
    tar -xf latest.tar.gz
RUN mkdir -p /var/www/html && mkdir /run/php
RUN mv wordpress/* /var/www/html/ && mv phpMyAdmin-5.2.0-all-languages/ /var/www/html/phpmyadmin/
RUN touch /run/php/php7.4-fpm.pid
EXPOSE 9000
CMD ["php-fpm7.4", "--nodaemonize"]