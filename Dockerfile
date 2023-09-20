# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre
# Refer to Maven build -> finalName
ARG JAR_FILE=target/*.jar
# cd /opt/app
WORKDIR /opt/app
# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","app.jar"]


#Docker işlemleri
#docker build -t eureka-server:0.0.1 . //eureka-server image oluşturdu
#docker-compose - p stock-management -f eureka-server.yml up -d