FROM debian:buster

RUN apt update -y \
&& apt upgrade -y
RUN apt install nginx -y

EXPOSE 8080 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]