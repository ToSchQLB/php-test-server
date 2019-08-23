FROM php:7-fpm

RUN apt-get update -y && \ 
    apt-get install -y \
        libpng-dev \
        libmagickwand-dev && \
    pecl install \
        imagick && \ 
    docker-php-ext-enable \
        imagick && \
    docker-php-ext-install \
        pdo \
        pdo_mysql
