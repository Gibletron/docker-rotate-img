FROM richarvey/nginx-php-fpm:latest
MAINTAINER Gibletron
    
# add local files
COPY rotate.php /var/www/html/index.php


EXPOSE 80

VOLUME /config

# Change default nginx to also startup fpm in our case.
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
