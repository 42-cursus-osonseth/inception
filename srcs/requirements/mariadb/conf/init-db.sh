#!/bin/bash

set -e
mariadb-install-db --user=mysql --datadir=/var/lib/mysql > /dev/null
mysqld --user=mysql --bootstrap <<EOF
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS \`${MARIADB_DATABASE}\`;
CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO '${MARIADB_USER}'@'%';
FLUSH PRIVILEGES;
EOF
touch /var/lib/mysql/initialized
