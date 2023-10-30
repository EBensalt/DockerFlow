FROM	debian:11

RUN		["apt", "update"]

RUN		["apt", "upgrade", "-y"]

RUN		["apt", "install", "nginx", "openssl", "-y"]

RUN		["mkdir", "/etc/nginx/ssl"]

RUN		["openssl", "req", "-x509", "-nodes", "-newkey", "rsa:2048", "-keyout", "/etc/nginx/ssl/test.key", "-out", "/etc/nginx/ssl/test.crt", "-subj", "/CN=test.mbs"]

COPY	config/nginx.conf /etc/nginx/conf.d/

COPY	tools/ /var/www/html/tools/

EXPOSE	443

# CMD		["nginx", "-g", "daemon off;"]
