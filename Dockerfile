FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

USER root
MAINTAINER cloud-devops
RUN apt update -y && apt install apache2 -y

COPY . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]




