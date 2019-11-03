#FROM java:8
FROM openjdk:8-jdk-alpine
COPY /root/.jenkins/workspace/springboot-demo/target/springboot-demo.jar springboot-demo.jar
EXPOSE 8899
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springboot-demo.jar"]
