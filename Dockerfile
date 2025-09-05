FROM php:7.4-apache

# Встановлюємо системні залежності
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    libmcrypt-dev \
    zip \
    unzip \
    git \
    autoconf \
    gcc \
    make \
    pkg-config \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql mysqli gd zip \
    && pecl install mcrypt-1.0.4 \
    && docker-php-ext-enable mcrypt

# Вмикаємо Apache mod_rewrite
RUN a2enmod rewrite

# Робоча директорія
WORKDIR /var/www/html
