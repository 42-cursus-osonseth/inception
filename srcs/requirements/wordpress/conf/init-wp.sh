#!/bin/bash
set -e
sed -i 's|^listen =.*|listen = 9000|' /etc/php/7.4/fpm/pool.d/www.conf