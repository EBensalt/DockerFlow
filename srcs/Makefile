images				= $(shell docker images -aq)
containers			= $(shell docker ps -aq)
volumes				= $(shell docker volume ls -q)
running_containers	= $(shell docker ps -q)

all		:
	docker system df
	docker network ls
clean	:
	-docker stop $(running_containers)
	-docker rmi -f $(images)
	-docker rm -f $(containers)
fclean	: clean
	-docker volume rm -f $(volumes)
	docker builder prune -f
re		: fclean all
