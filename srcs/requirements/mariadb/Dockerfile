FROM debian:bullseye

RUN apt update && apt install mariadb-server mariadb-client -y
COPY conf/init-db.sh /usr/local/bin/init-db.sh
COPY conf/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["entrypoint.sh"]
