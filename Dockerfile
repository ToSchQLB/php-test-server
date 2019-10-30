FROM php:7-fpm

RUN apt-get update -y && \ 
    apt-get install -y \
        libzip \
        libpng-dev \
        libmagickwand-dev && \
    pecl install \
        imagick && \ 
    docker-php-ext-enable \
        imagick && \
    docker-php-ext-install \
        zip \
        zlib \
        gd \
        pdo \
        pdo_mysql
