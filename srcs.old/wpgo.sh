docker build --no-cache -f Dockerfile.wordpress -t wordpress_image .
docker rm mariadb.wordpress
docker run -d --name wordpress.container  --env-file .env wordpress_image