FROM alpine:edge

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk --update add \
        php74 \
        php74-bcmath \
        php74-dom \
        php74-ctype \
        php74-curl \
        php74-fileinfo \
        php74-fpm \
        php74-gd \
        php74-iconv \
        php74-intl \
        php74-json \
        php74-mbstring \
        php74-mcrypt \
        php74-mysqlnd \
        php74-opcache \
        php74-openssl \
        php74-pdo \
        php74-pdo_mysql \
        php74-pdo_pgsql \
        php74-pdo_sqlite \
        php74-phar \
        php74-posix \
        php74-simplexml \
        php74-session \
        php74-soap \
        php74-tokenizer \
        php74-xml \
        php74-xmlreader \
        php74-xmlwriter \
        php74-zip \
    && rm -rf /var/cache/apk/*
