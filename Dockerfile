FROM siutoba/docker-web

ENV TERM=xterm

MAINTAINER attentiondeficit@gmail.com

RUN apt-get update

RUN apt-get install -y mc

RUN apt-get install -y php-pear php-mail php-net-smtp 

RUN apt-get install -y poppler-utils

RUN docker-php-ext-install pdo_mysql

RUN pear install html_quickform2

RUN pear install http://phptal.org/latest.tar.gz
