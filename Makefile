DOCKER_NETWORK = zoo
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t hoult/docker-hadoop:$(current_branch) ./docker-hadoop

push:
	docker push hoult/docker-hadoop:$(current_branch)


