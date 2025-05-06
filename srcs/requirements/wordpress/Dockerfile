FROM debian:bullseye

RUN apt update && apt install php php-fpm php-mysql php-curl php-xml php-gd php-mbstring php-zip wget tar -y
COPY conf/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/*.sh
RUN mkdir -p /var/www /run/php && \
cd /var/www && \
wget https://wordpress.org/latest.tar.gz && \
tar -xzf latest.tar.gz && \
rm latest.tar.gz && \
chown -R www-data:www-data /var/www/wordpress
ENTRYPOINT ["entrypoint.sh"]