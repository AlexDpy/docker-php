FROM php:7.1

RUN apt-get update && apt-get install -y \
    libcurl4-gnutls-dev \
    libssl-dev \
    libicu-dev \
    libmcrypt-dev \
    libsqlite3-dev

RUN docker-php-ext-install \
    curl \
    exif \
    fileinfo \
    ftp \
    hash \
    iconv \
    intl \
    json \
    mbstring \
    mcrypt \
    mysqli \
    opcache \
    pcntl \
    pdo \
    pdo_sqlite \
    posix \
    zip

RUN pecl install \
    xdebug \
&& docker-php-ext-enable \
    xdebug

EXPOSE 80
EXPOSE 8080

VOLUME ["/app"]
WORKDIR /app
