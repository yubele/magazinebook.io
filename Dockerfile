FROM php:7.3.8

RUN apt update
RUN apt install -y libzip-dev
RUN docker-php-ext-install zip

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

SHELL ["/bin/bash", "-c"]
EXPOSE 3000