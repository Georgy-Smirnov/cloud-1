FROM debian:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx
RUN sed -i "s/index index.html index.htm index.nginx-debian.html;/index index.php index.html index.nginx-debian.html;/g" /etc/nginx/sites-available/default && \
    sed -i "s/server_name _;/server_name localhost;/g" /etc/nginx/sites-available/default && \
    sed -i "56 s/#location/location/" /etc/nginx/sites-available/default && \
    sed -i "s/#\tinclude snippets/\tinclude snippets/g" /etc/nginx/sites-available/default && \
    sed -i "63 s/#}/}/" /etc/nginx/sites-available/default && \
    sed -i "s/#\tfastcgi_pass unix:\/run\/php\/php7.4-fpm.sock;/\tfastcgi_pass php:9000;/g" /etc/nginx/sites-available/default
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
