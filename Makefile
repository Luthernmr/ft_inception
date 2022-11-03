NAME	= inception

COMPOSE	= docker-compose -f srcs/docker-compose.yml 

up :
		$(COMPOSE) up -d --build
down : 
		$(COMPOSE) down

start :
		$(COMPOSE) start 

fclean: down
		docker system prune -a

restart:
		$(COMPOSE) restart

