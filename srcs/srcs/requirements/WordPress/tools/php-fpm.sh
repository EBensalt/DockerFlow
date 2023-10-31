#!/bin/bash

service php7.4-fpm start
service php7.4-fpm stop
exec php-fpm7.4 -F
