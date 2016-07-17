FROM php:5.6-alpine

ENV PHPIZE_DEPS \
    autoconf \
    file \
    g++ \
    gcc \
    libc-dev \
    make \
    pkgconf \
    re2c

RUN apk add --no-cache --virtual .build-deps \
    $PHPIZE_DEPS \
    curl-dev \
    gnupg \
    libedit-dev \
    libxml2-dev \
    openssl-dev \
    sqlite-dev

RUN docker-php-ext-install \
    bcmath \
    curl \
    exif \
    fileinfo \
    ftp \
    gd \
    hash \
    iconv \
    intl \
    json \
    ldap \
    mbstring \
    mcrypt \
    mysql \
    mysqli \
    opcache \
    openssl \
    pcntl \
    pcre \
    pdo \
    pdo_mysql \
    pdo_pgsql \
    pdo_sqlite \
    pgsql \
    phar \
    posix \
    reflection \
    session \
    sqlite3 \
    zip

RUN pecl install \
    xdebug \
&& docker-php-ext-enable \
    xdebug

RUN apk del .build-deps

VOLUME ["/app"]
WORKDIR /app
