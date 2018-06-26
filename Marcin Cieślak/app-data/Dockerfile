FROM ubuntu:16.04

RUN apt-get -qq update

RUN apt-get install -y wget && apt-get install -y zip
RUN wget "https://wordpress.org/wordpress-4.0.zip"
RUN unzip wordpress-4.0.zip

RUN mkdir /var/www
RUN mkdir /var/www/html

RUN chmod -R 777 wordpress
RUN cp -a wordpress/. var/www/html

VOLUME [ "/var/www/html" ]
WORKDIR /var/www/html