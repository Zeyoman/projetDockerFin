FROM adminer:latest

USER root
RUN mkdir -p /usr/local/etc/php/conf.d && \
    echo "memory_limit = 2048M" >> /usr/local/etc/php/conf.d/upload.ini
