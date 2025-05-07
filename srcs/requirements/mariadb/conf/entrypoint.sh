#!/bin/bash

set -e
mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld
sed -i 's|^bind-address\s*=.*|bind-address = 0.0.0.0|' /etc/mysql/mariadb.conf.d/50-server.cnf
if [ ! -f "/var/lib/mysql/initialized" ]; then
    /usr/local/bin/init-db.sh
fi
exec mysqld