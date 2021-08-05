FROM openjdk:8-jre-slim
ARG JAR_FILE=JAR_FILE_MUST_BE_SPECIFIED_AS_BUILD_ARG
COPY ${JAR_FILE} app.jar
RUN apt-get update && \
    apt-get install -y curl --no-install-recommends && \
    apt-get install -y iputils-ping
ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom","-jar","/app.jar"]