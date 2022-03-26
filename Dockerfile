FROM openjdk:11-jre-slim-buster

RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gatewayapp.jar

EXPOSE 8096

ENTRYPOINT ["java","-jar","/gatewayapp.jar"]