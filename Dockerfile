FROM richarvey/nginx-php-fpm:latest
MAINTAINER Gibletron
    
# add local files
COPY rotate.php /usr/share/nginx/html/rotate.php

# fix permissions
RUN chown nginx -R /usr/share/nginx/html/ && \
    chown nginx /var/lib/php7/sessions && \
    chmod 755 -R /usr/share/nginx/html/

# Change default nginx to also startup fpm in our case.
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
