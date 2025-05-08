FROM debian:bullseye

RUN apt update && apt install php php-fpm php-mysql php-curl php-xml php-gd php-mbstring php-zip tar wget -y
RUN mkdir -p /var/www /run/php
RUN chown www-data:www-data /run/php && \
chmod 755 /run/php
RUN wget https://www.adminer.org/latest.php -O /var/www/index.php

EXPOSE 8080
CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www"]