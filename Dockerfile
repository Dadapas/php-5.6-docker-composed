from php:5.6-apache
COPY config/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN docker-php-ext-install pdo_mysql mysqli mysql\
    && docker-php-ext-enable pdo_mysql
