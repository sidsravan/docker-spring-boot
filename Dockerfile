# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

RUN chmod -R 777 /opt/app
# cp target/spring-boot-web.jar /opt/app/app.jar
COPY target/spring-boot-web.jar /opt/app/spring-boot-web.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","spring-boot-web.jar"]
