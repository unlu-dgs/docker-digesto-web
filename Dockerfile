FROM siutoba/php:7.3-alpine
ENV TERM=xterm
MAINTAINER attentiondeficit@gmail.com

RUN apk --no-cache add \
    php7-pear \
    php7-pdo_mysql \
    poppler-utils

RUN pear config-set http_proxy http://proxy.unlu.edu.ar:8080
RUN pear install html_quickform2
RUN pear install http://phptal.org/latest.tar.gz
RUN pear install db
RUN printf "max_execution_time=0" >> /etc/php7/php.ini
