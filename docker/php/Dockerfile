FROM php:7.2.7-fpm-alpine3.7
RUN apk update; \
    apk upgrade;

RUN docker-php-ext-install mysqli
RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install gd && apk del libpng-dev