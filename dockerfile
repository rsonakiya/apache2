FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
ADD ./html /var/www/html/add
ENTRYPOINT apachectl -D FOREGROUND
ENV name Youtube
