DOCKER_NETWORK = zoo
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t hoult/centos7:$(current_branch) ./centos7

push:
    docker push hoult/centos7:$(current_branch)
