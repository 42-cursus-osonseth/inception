#!/bin/bash
set -e
echo "Configuration de WordPress..."
wget https://wordpress.org/latest.tar.gz -O /var/www/latest.tar.gz
tar -xzf /var/www/latest.tar.gz -C /var/www/
rm -rf latest.tar.gz
chown -R www-data:www-data /var/www/wordpress
cd /var/www/wordpress
wp-cli config create \
      --dbname="$MARIADB_DATABASE" \
      --dbuser="$MARIADB_USER" \
      --dbpass="$MARIADB_PASSWORD" \
      --dbhost="mariadb"  \
      --allow-root

wp-cli core install \
      --url="mmauchre.42.fr" \
      --title="inception" \
      --admin_user="$WORDPRESS_ADMIN_USER" \
      --admin_password="$WORDPRESS_ADMIN_PASSWORD" \
      --admin_email="$WORDPRESS_ADMIN_EMAIL" \
      --allow-root