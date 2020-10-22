FROM php:7.2-apache

RUN apt-get update && apt-get install -y mariadb-client openssh-client
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN a2enmod rewrite

