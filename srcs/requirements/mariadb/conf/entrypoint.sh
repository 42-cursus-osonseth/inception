#!/bin/bash
# set -e
# if [ ! -d "/var/lib/mysql/${MARIADB_DATABASE}" ]; then
#     /usr/local/bin/init-db.sh
# fi

# exec mysqld

set -e
mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld
if [ ! -d "/var/lib/mysql/mysql" ]; then
    /usr/local/bin/init-db.sh
fi

exec mysqld