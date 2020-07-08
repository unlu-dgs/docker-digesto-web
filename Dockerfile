FROM siutoba/docker-web:v1.8
ENV TERM=xterm
MAINTAINER attentiondeficit@gmail.com

RUN apt-get update && apt-get -y install --no-install-recommends \
    php-pear php-mail php-net-smtp poppler-utils \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql

RUN pear install html_quickform2
RUN pear install http://phptal.org/latest.tar.gz
RUN pear install db
RUN printf "max_execution_time=0" >> /usr/local/etc/php/php.ini
