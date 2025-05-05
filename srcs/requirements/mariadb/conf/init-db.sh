#!/bin/bash

mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld
/usr/sbin/mariadbd --user=mysql --datadir=/var/lib/mysql --socket=/run/mysqld/mysqld.sock &
echo "=> Attente du démarrage de MariaDB..."
while ! mariadb-admin ping --socket=/run/mysqld/mysqld.sock --silent; do
    sleep 1
done
echo "=> MariaDB est prêt, création de la base..."
mariadb -e "
CREATE DATABASE IF NOT EXISTS \`${MARIADB_DATABASE}\`;
CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO '${MARIADB_USER}'@'%';
FLUSH PRIVILEGES;
"
