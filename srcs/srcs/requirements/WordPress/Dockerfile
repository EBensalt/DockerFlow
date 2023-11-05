FROM	debian:11

RUN		["apt", "update"]

RUN		["apt", "upgrade", "-y"]

RUN		["apt", "install", "php-fpm", "wget", "php-mysql", "curl", "-y"]

COPY	config/z-php-fpm.conf /etc/php/7.4/fpm/pool.d/

COPY	tools/php-fpm.sh /

RUN		["chmod", "+x", "php-fpm.sh"]

EXPOSE	9000

CMD		["./php-fpm.sh"]
