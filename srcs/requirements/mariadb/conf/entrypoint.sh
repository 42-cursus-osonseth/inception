#!/bin/bash

if [ ! -d "/var/lib/mysql/${MARIADB_DATABASE}" ]; then
    echo "=> Initialisation de la base de données..."
    /usr/local/bin/init-db.sh
fi

exec mysqld
