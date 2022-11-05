FROM debian:buster

RUN apt-get update -y

RUN apt-get install nginx -y && apt-get install openssl -y


RUN  openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/ssl/certs/lnemor.crt \
        -keyout /etc/ssl/private/lnemor.key \
        -subj "/C=FR"


COPY conf/nginx.conf /etc/nginx/conf.d/
#RUN		ln -s /etc/nginx/sites-available/lnemor.42.fr.conf /etc/nginx/sites-enabled/lnemor.42.fr.conf


EXPOSE 443 9000

ENTRYPOINT ["nginx", "-g", "daemon off;"]