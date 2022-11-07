NAME	= inception

COMPOSE	= docker-compose -f srcs/docker-compose.yml 

up :volumes
		$(COMPOSE) up -d --build
down : 
		$(COMPOSE) down

start :
		$(COMPOSE) start 

fclean: down
	docker system prune -af --volumes
	rm -rf /home/$(USER)/data/*
restart:
		$(COMPOSE) restart
volumes:
	mkdir -p /home/$(USER)/data/WordPress
	mkdir -p /home/$(USER)/data/DB
