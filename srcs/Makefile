all		:
	if [ -d "/home/ebensalt/data" ]; then echo "data folder exists"; else mkdir /home/ebensalt/data; fi
	if [ -d "/home/ebensalt/data/wordpress" ]; then echo "wordpress files exists"; else mkdir /home/ebensalt/data/wordpress; fi
	if [ -d "/home/ebensalt/data/mariadb" ]; then echo "wordpress database exists"; else mkdir /home/ebensalt/data/mariadb; fi
	if grep -q ebensalt.42.fr /etc/hosts; then echo "domain name exists"; else echo "127.0.0.1 ebensalt.42.fr" | sudo tee -a /etc/hosts; fi
	docker-compose -f srcs/docker-compose.yml up -d --build
clean	:
	docker-compose -f srcs/docker-compose.yml down --rmi all -v
fclean	: clean
	docker builder prune -f
	sudo rm -rf /home/ebensalt/data/wordpress/* /home/ebensalt/data/mariadb/*
re		: fclean all
