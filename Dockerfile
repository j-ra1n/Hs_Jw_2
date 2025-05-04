# Dockerfile-dev
FROM openjdk:17-jdk-slim

ARG PROFILE
ENV PROFILE=${PROFILE}

ARG JAR_FILE=/build/libs/contract-system-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} /app.jar

ENTRYPOINT ["sh", "-c", "exec java -jar -Dspring.profiles.active=$PROFILE /app.jar"]