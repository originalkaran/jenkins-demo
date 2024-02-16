FROM openjdk
LABEL maintainer = "abc@mail.com"
EXPOSE 8080
WORKDIR /app
COPY target/demo-jenkins-0.0.1-SNAPSHOT.jar /app/demo-jenkins-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "docker-demo.jar"]