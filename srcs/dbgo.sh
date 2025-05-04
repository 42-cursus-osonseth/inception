#!/bin/bash

docker build --no-cache -f Dockerfile.mariadb -t mariadb_image .
docker rm mariadb.container
# docker run -d --name mariadb.container mariadb_image
docker run -it --rm --name mariadb_container mariadb_image


# docker run -d --name mariadb.container  --env-file .env mariadb_image
