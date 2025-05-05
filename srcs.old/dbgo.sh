#!/bin/bash

docker build --no-cache -f Dockerfile.mariadb -t mariadb_image .
docker rm mariadb.container
docker run -d --name mariadb.container  --env-file .env mariadb_image
