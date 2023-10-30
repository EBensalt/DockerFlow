FROM	debian:11

RUN		["apt", "update"]

RUN		["apt", "upgrade", "-y"]

RUN		["apt", "install", "mariadb-server", "-y"]

COPY	/tools/mariadb.sh /

COPY	/config/mariadb.cnf /etc/mysql/mariadb.conf.d/

RUN		["chmod", "+x", "mariadb.sh"]

CMD		["./mariadb.sh"]
