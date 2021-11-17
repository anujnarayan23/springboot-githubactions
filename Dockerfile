FROM openjdk:8-jdk-alpine
VOLUME /tmp

ARG JAR_FILE
ADD /home/runner/work/springboot-githubactions/springboot-githubactions/downloads/mapp.jar app.jar

ENV JAR_OPTS=""
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar $JAR_OPTS
