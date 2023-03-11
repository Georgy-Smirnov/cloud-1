FROM debian:bullseye
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y default-mysql-server
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "docker-entrypoint.sh" ]
EXPOSE 3306
CMD [ "/usr/bin/mysqld_safe" ]