FROM php:7.2-apache

# Install php-GD
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

# Change Permission for Folder '/var/www/html'
RUN chown -R 1000:1000 /var/www/html
RUN chmod 777 /var/www/html
USER 1000