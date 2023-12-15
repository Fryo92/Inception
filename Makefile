all : up

up : 
	mkdir -p ~/data/mariadb
	mkdir -p ~/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down : 
	docker-compose -f ./srcs/docker-compose.yml down

stop : 
	docker-compose -f ./srcs/docker-compose.yml stop

start : 
	docker-compose -f ./srcs/docker-compose.yml start

.PHONY : up down stop start