NAME	= inception

COMPOSE	= docker-compose -f srcs/docker-compose.yml -p $(NAME)

up :
		$(COMPOSE) up --detach

down : 
		$(COMPOSE) down

start :
		$(COMPOSE) start 