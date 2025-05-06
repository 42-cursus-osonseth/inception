#!/bin/bash

# Empêche le conteneur de s'arrêter
# tail -f /dev/null
sed -i 's|^listen =.*|listen = 9000|' /etc/php/7.4/fpm/pool.d/www.conf

exec php-fpm7.4 -F