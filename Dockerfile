FROM alpine:latest
ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub

RUN apk --update add ca-certificates && \
    echo "https://dl.bintray.com/php-alpine/v3.11/php-7.3" >> /etc/apk/repositories
    
RUN apk --update add \
        php \
        php-bcmath \
        php-dom \
        php-ctype \
        php-curl \
        php-fileinfo \
        php-fpm \
        php-gd \
        php-iconv \
        php-intl \
        php-json \
        php-mbstring \
        php-mcrypt \
        php-mysqlnd \
        php-opcache \
        php-openssl \
        php-pdo \
        php-pdo_mysql \
        php-pdo_pgsql \
        php-pdo_sqlite \
        php-phar \
        php-posix \
        php-simplexml \
        php-session \
        php-soap \
        php-tokenizer \
        php-xml \
        php-xmlreader \
        php-xmlwriter \
        php-zip \
    && rm -rf /var/cache/apk/*
