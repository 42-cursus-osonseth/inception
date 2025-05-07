#!/bin/bash
set -e
sed -i 's|^listen =.*|listen = 9000|' /etc/php/7.4/fpm/pool.d/www.conf
until mysqladmin -u"$MARIADB_USER" -p"$MARIADB_PASSWORD" -h"mariadb" ping --silent; do
    echo "MariaDB n'est pas encore prêt, on attend..."
    sleep 2
done
    echo "MariaDB est prêt"
if [ ! -f /var/www/wordpress/wp-config.php ]; then
    /usr/local/bin/init-wp.sh
    echo "Configuration de WordPress est terminé !"
fi

exec php-fpm7.4 -F