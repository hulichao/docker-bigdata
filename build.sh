docker build -t hoult/centos7 centos7
docker tag  hoult/centos7 hoult/centos7:jdk8-ssh
docker push hoult/centos7:jdk8-ssh

docker build -t hoult/docker-hadoop docker-hadoop
docker tag hoult/docker-hadoop hoult/docker-hadoop:2.9.2
docker push hoult/docker-hadoop:2.9.2

