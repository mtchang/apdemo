FROM ubuntu:latest
MAINTAINER mtchang <mtchang.tw@gmail.com>

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install supervisor git apache2 libapache2-mod-php5 mysql-server php5-mysql pwgen php-apc php5-mcrypt && \
  echo "ServerName localhost" >> /etc/apache2/apache2.conf

#Enviornment variables to configure php
ENV PHP_UPLOAD_MAX_FILESIZE 10M
ENV PHP_POST_MAX_SIZE 10M
