FROM richarvey/nginx-php-fpm:latest
MAINTAINER Gibletron
    
# add local files
COPY rotate.php /var/www/html/index.php


EXPOSE 80

CMD ["/start.sh"]
