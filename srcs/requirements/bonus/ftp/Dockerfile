FROM debian:bullseye

RUN apt update && apt install vsftpd -y
RUN mkdir -p /var/run/vsftpd/empty
COPY conf/ftp.conf /etc/vsftpd.conf
COPY conf/entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
