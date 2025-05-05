FROM debian:bullseye

RUN apt-get update \
    && apt-get install nginx-core openssl -y \
    && openssl req -x509 -nodes -newkey rsa:4096 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt -days 365 -subj "/C=FR/ST=Île-de-France/L=Paris/O=Exemple Org/OU=IT Department/CN=localhost"
COPY conf/default.conf /etc/nginx/conf.d/
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]