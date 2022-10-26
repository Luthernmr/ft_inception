FROM debian:buster

RUN apt update -y && apt upgrade -y

RUN apt-get install php-fpm php-mysql curl -y

ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp

RUN chmod +x /usr/local/bin/wp

