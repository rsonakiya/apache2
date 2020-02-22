FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
copy ./html/1.html /var/www/html/index.html
copy ./html/1.html /var/www/html/index.php
ADD ./html /var/www/html/add
ENTRYPOINT apachectl -D FOREGROUND
ENV name Youtube
