FROM richarvey/nginx-php-fpm:1.10.3
MAINTAINER Gibletron
    
# add local files
COPY rotate.php /var/www/html/index.php


EXPOSE 80

CMD ["/start.sh"]
