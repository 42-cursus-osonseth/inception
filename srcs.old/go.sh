#!/bin/bash

docker build --no-cache -f Dockerfile.nginx -t nginx_image .
docker rm nginx.container
docker run -d --name nginx.container -p 443:443 nginx_image
