FROM ubuntu:18.04
LABEL maintainer = "Massive Health, Inc."

# Install core dependencies
ENV TZ=UTC
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y tzdata software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y php7.4-fpm php7.4-bcmath php7.4-dev php7.4-bz2 php7.4-intl php7.4-gd php7.4-mbstring php7.4-zip php7.4-mysqlnd php7.4-tidy php7.4-curl
RUN pecl install igbinary
RUN pecl install xdebug
RUN pecl install redis
RUN mkdir -p /run/php/ && chown -Rf www-data:www-data /run/php

# Configure php-fpm
COPY ./config/fpm/ /etc/php/7.4/fpm

# Set the stop signal for fpm
STOPSIGNAL SIGQUIT

# Start FPM
CMD ["/usr/sbin/php-fpm7.4", "-O", "-F" ]
EXPOSE 9000
