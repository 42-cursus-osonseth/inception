FROM debian:bullseye

RUN apt update && apt install php php-fpm php-mysql php-curl php-xml php-gd php-mbstring php-zip tar wget -y
COPY conf/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY conf/init-wp.sh /usr/local/bin/init-wp.sh
RUN chmod +x /usr/local/bin/*.sh
RUN mkdir -p /var/www /run/php && \
cd /var/www && \
wget https://wordpress.org/latest.tar.gz && \
tar -xzf latest.tar.gz && \
rm latest.tar.gz && \
chown -R www-data:www-data /var/www/wordpress
ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp-cli
RUN chmod +x /usr/local/bin/wp-cli
ENTRYPOINT ["entrypoint.sh"]