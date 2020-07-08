FROM httpd:2.4-alpine
#FROM siutoba/php:7.3-alpine
MAINTAINER attentiondeficit@gmail.com
ENV TERM=xterm

RUN apk --no-cache add \
    bash \
    tzdata \
    php7 \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-exif \
    php7-fileinfo \
    php7-gd \
    php7-gmp \
    php7-iconv \
    php7-json \
    php7-mbstring \
    php7-memcached \
    php7-opcache \
    php7-openssl \
    php7-pcntl \
    php7-pdo_pgsql \
    php7-phar \
    php7-session \
    php7-simplexml \
    php7-sodium \
    php7-tokenizer \
    php7-zip \
    php7-xml \
    php7-xmlwriter \
    php7-xsl \
    libsodium \
    php7-apache2 \
    php7-pear \
    php7-pdo_mysql \
    poppler-utils \
    curl \
    && rm -rf /var/cache/apk/* \
    #&& mkdir -p /run/apache2 \
    && echo "date.timezone=America/Argentina/Buenos_Aires" >> /etc/php7/php.ini \
    && echo "log_errors=On" >> /etc/php7/php.ini \
    && echo "ErrorLog /dev/stderr" >> /etc/apache2/httpd.conf \
    && echo "TransferLog /dev/stdout" >> /etc/apache2/httpd.conf \
    && echo "LoadModule rewrite_module modules/mod_rewrite.so" >> /etc/apache2/httpd.conf \
    && echo "ServerTokens Prod" >> /etc/apache2/httpd.conf \
    && echo "ServerSignature Off" >> /etc/apache2/httpd.conf \
    && echo "TraceEnable off" >> /etc/apache2/httpd.conf \
    && echo $TZ > /etc/timezone

RUN pear install html_quickform2
RUN pear install http://phptal.org/latest.tar.gz
RUN pear install db
RUN printf "max_execution_time=0" >> /etc/php7/php.ini
