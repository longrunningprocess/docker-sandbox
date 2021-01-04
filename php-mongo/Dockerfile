# https://docs.docker.com/engine/reference/builder
FROM php:apache

RUN apt-get update && \
    # have to install this so libmongoc SSL with be enabled
    apt-get install --yes --no-install-recommends libssl-dev

# install mongo extension and enable it
RUN pecl install mongodb && \
    docker-php-ext-enable mongodb

EXPOSE 80