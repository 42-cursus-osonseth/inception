FROM debian:bullseye

RUN apt-get update && apt-get install -y wget tar && \
    wget https://github.com/portainer/portainer/releases/download/2.20.2/portainer-2.20.2-linux-amd64.tar.gz -O portainer.tar.gz && \
    tar -xvzf portainer.tar.gz && \
    mv portainer /usr/local/bin/portainer && \
    rm -rf portainer.tar.gz
EXPOSE 9000

CMD ["/usr/local/bin/portainer/portainer", "--http-enabled"]

