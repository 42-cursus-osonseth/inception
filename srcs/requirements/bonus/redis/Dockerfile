FROM debian:bullseye

RUN apt update && apt install redis-server -y && \
    sed -i \
        -e "s|bind 127.0.0.1|#bind 127.0.0.1|g" \
        -e "s|# maxmemory <bytes>|maxmemory 20mb|g" \
        /etc/redis/redis.conf && \
    echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server", "--protected-mode", "no"]
