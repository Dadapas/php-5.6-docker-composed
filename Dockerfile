from php:5.6-apache

RUN pecl install xdebug-2.1.1 \
    && docker-php-ext-install pdo_mysql mysqli mysql\
    && docker-php-ext-enable pdo_mysql mysqli
