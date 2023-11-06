FROM	debian:11

RUN		["apt", "update"]

RUN		["apt", "upgrade", "-y"]

RUN		["apt", "install", "nginx", "openssl", "-y"]

RUN		["mkdir", "/etc/nginx/ssl"]

RUN		["openssl", "req", "-x509", "-nodes", "-newkey", "rsa:2048", "-keyout", "/etc/nginx/ssl/Inception.key", "-out", "/etc/nginx/ssl/Inception.crt", "-subj", "/CN=ebensalt.42.fr"]

COPY	config/nginx.conf /etc/nginx/conf.d/

EXPOSE	443

CMD		["nginx", "-g", "daemon off;"]
