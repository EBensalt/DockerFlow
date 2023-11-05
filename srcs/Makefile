all		:
	if [ -d "/home/test/data" ]; then echo "data folder exists"; else mkdir /home/test/data; fi
	if [ -d "/home/test/data/wordpress" ]; then echo "wordpress files exists"; else mkdir /home/test/data/wordpress; fi
	if [ -d "/home/test/data/mariadb" ]; then echo "wordpress database exists"; else mkdir /home/test/data/mariadb; fi
	docker-compose -f srcs/docker-compose.yml up -d --build
clean	:
	docker-compose -f srcs/docker-compose.yml down --rmi all -v
fclean	: clean
	docker builder prune -f
	sudo rm -rf /home/test/data
re		: fclean all
