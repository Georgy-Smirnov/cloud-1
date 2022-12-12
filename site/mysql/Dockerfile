FROM debian:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y default-mysql-server
RUN sed -i "s/# port/port/g" /etc/mysql/my.cnf
RUN sed -i "s/socket/# socket/g" /etc/mysql/my.cnf
RUN sed -i "s/bind-address/#bind-address/g" /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./create_user.sh /
EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]