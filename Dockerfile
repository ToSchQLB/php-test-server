FROM php:7-fpm

RUN apt-get update -y && \ 
    apt-get install -y \
        git \
        zip \
        libzip-dev \
        libpng-dev \
        libmagickwand-dev && \
    docker-php-ext-configure zip --with-libzip && \
    pecl install \
        imagick && \ 
    docker-php-ext-enable \
        imagick && \
    docker-php-ext-install \
        zip \
        gd \
        pdo \
        pdo_mysql
