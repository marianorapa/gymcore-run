# Variables
DOCKER_COMPOSE_FILE := docker-compose.yml

# Default target: start all services
.PHONY: up
up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

# Target to start only the database service
.PHONY: db
db:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d db

# Target to stop all services
.PHONY: down
down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

# Target to stop the database service only
.PHONY: stop-db
stop-db:
	docker-compose -f $(DOCKER_COMPOSE_FILE) stop db

.PHONY: app
app:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d app

.PHONY: stop-app
stop-app:
	docker-compose -f $(DOCKER_COMPOSE_FILE) stop app