
FROM java:8-jdk-alpine

COPY ./target/sfg-thymeleaf-course-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

EXPOSE 8080

RUN sh -c 'touch sfg-thymeleaf-course-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","sfg-thymeleaf-course-0.0.1-SNAPSHOT.jar"]




#---------------------------------------------------------
#FROM openjdk:8
#ENV JAVA_VERSION 8u31
#ENV BUILD_VERSION b13
# Upgrading system

# Downloading & Config Java 8

#EXPOSE 8080
#install Spring Boot artifact
#VOLUME /tmp
#ADD /sfg-thymeleaf-course-0.0.1-SNAPSHOT.jar sfg-thymeleaf-course.jar
#RUN sh -c 'touch /sfg-thymeleaf-course.jar'
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/sfg-thymeleaf-course.jar"]