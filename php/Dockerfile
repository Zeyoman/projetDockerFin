FROM php:8.2-fpm-alpine

RUN apk add --no-cache \
    postgresql-dev \
    $PHPIZE_DEPS \
    && docker-php-ext-install pdo_pgsql

WORKDIR /var/www/html

