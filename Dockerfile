ARG PHP_VERSION=7.2
FROM php:${PHP_VERSION}-apache

RUN apt-get update && apt-get install -y mariadb-client openssh-client zlib1g-dev zip libpng-dev libzip-dev
RUN docker-php-ext-install -j$(nproc) pdo_mysql zip
RUN a2enmod rewrite

