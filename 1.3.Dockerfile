ARG PHP_IMAGE_TAG
FROM krato/php:${PHP_IMAGE_TAG}-1.2

RUN apt-get install -y sendmail libjpeg-dev libjpeg62-turbo-dev
RUN docker-php-ext-install -j$(nproc) mysqli
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr
RUN docker-php-ext-install -j$(nproc) gd
RUN pecl install xdebug
