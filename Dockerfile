FROM maven:3.3-jdk-8
#openjdk:8-jdk-alpine
#VOLUME /tmp

#ARG JAR_FILE
#RUN PWD
#COPY /home/runner/work/springboot-githubactions/springboot-githubactions/target/spring-boot-hello-world-1.0.0-SNAPSHOT.jar app.jar

#ENV JAR_OPTS=""
#ENV JAVA_OPTS=""
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar $JAR_OPTS

COPY . /project
WORKDIR /project
RUN  mvn clean package && cp ./project/target/spring-boot-hello-world-1.0.0-SNAPSHO.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]
