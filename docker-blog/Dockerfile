FROM java:8

VOLUME /tmp

ADD blog-springboot-0.0.1.jar blog.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/blog.jar"]