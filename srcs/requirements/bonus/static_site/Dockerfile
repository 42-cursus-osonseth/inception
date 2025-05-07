FROM debian:bullseye

RUN apt-get update && apt-get install nginx-core -y

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]