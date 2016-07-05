FROM siutoba/docker-web

ENV TERM=xterm

MAINTAINER attentiondeficit@gmail.com

RUN apt-get update

RUN apt-get install -y mc

RUN apt-get install php-pear php-mail php-net-smtp 

RUN apt-get install poppler-utils

RUN pear install html_quickform2

RUN pear install http://phptal.org/latest.tar.gz
