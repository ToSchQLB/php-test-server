FROM php:7-fpm

CMD apt-get update -y && \
    apt-get install -y \ 
      libpng-dev \ 
      libmagickwand-dev && \ 
    pecl install imagick && \
    docker-php-ext-enable imagick && \
    docker-php-ext-install mysqli \
      pdo \ 
      pdo_mysql \
      gd
