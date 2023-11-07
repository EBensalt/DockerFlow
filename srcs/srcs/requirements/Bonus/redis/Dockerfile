FROM	debian:11

RUN		["apt", "update"]

RUN		["apt", "upgrade", "-y"]

RUN		["apt", "install", "redis-server", "-y"]

COPY	config/my_redis.conf /etc/redis/

EXPOSE	6379

CMD		["redis-server", "/etc/redis/my_redis.conf"]
