FROM debian:bullseye

RUN apt update && apt install php php-fpm php-mysql php-curl php-xml php-gd php-mbstring php-zip tar wget -y
COPY conf/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY conf/init-wp.sh /usr/local/bin/init-wp.sh
RUN chmod +x /usr/local/bin/*.sh
RUN mkdir -p /var/www /run/php
ADD https://wordpress.org/latest.tar.gz /var/www/
RUN tar -xzf /var/www/latest.tar.gz -C /var/www && rm /var/www/latest.tar.gz
RUN chown -R www-data:www-data /var/www/wordpress
ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp-cli
RUN chmod +x /usr/local/bin/wp-cli
ENTRYPOINT ["entrypoint.sh"]