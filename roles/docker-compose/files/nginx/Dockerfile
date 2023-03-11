FROM debian:bullseye
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx openssl
COPY ./default /etc/nginx/sites-available/default
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/tls.key -out /etc/ssl/tls.crt -sha256 -days 365 -subj '/CN=kjacoCert' -nodes
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
