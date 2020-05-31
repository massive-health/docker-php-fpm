Docker Container: php-fpm
=========================
This is a Docker container that runs PHP's php-fpm with additional packages required for Laravel projects

Container Contents
------------------
This container is running Ubuntu 18.04 with the following contents:

1. Packages
    1. php7.4-fpm
    2. php7.4-bcmath
    3. php7.4-dev
    4. php7.4-bz2
    5. php7.4-intl
    6. php7.4-gd
    7. php7.4-mbstring
    8. php7.4-zip
    9. php7.4-mysqlnd
    10. php7.4-tidy
    11. php7.4-curl
2. Services
    1. php-fpm listening on port 9000

Availability
------------
This container is publicly available on [Docker Hub](https://hub.docker.com/r/massivehealth/php-fpm)
