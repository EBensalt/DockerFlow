FROM	debian:11

RUN		["apt", "update"]

RUN		["apt", "upgrade", "-y"]

RUN		["apt", "install", "php-fpm", "-y"]

# RUN		["apt", "install", "php-fpm", "mariadb-client", "php-mysql", "wget", "-y"]

# RUN		["wget", "https://wordpress.org/latest.tar.gz"]

COPY	config/z-php-fpm.conf /etc/php/7.4/fpm/pool.d/

COPY	tools/files/ /var/www/html/tools/

COPY	tools/php-fpm.sh /

RUN		["chmod", "+x", "php-fpm.sh"]

EXPOSE	9000

# CMD		["./php-fpm.sh"]
