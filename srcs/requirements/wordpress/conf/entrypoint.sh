#!/bin/bash
set -e
if [ ! -f /var/www/wordpress/wp-config.php ]; then
    echo "Configuration de WordPress..."
    /usr/local/bin/init-wp.sh
fi

exec php-fpm7.4 -F