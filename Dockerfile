FROM openjdk:8-jdk-alpine

RUN apk add --no-cache bash

COPY ./target/config-server.jar config-server.jar

ENTRYPOINT ["java", "-jar", "config-server.jar"]