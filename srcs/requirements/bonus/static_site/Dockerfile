FROM debian:bullseye

RUN apt-get update && apt-get install nginx-core -y
COPY conf/default.conf /etc/nginx/conf.d/
COPY conf/index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]