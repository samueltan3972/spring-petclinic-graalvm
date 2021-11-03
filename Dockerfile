FROM ghcr.io/graalvm/graalvm-ce:java11-21.3.0
ARG JAR_FILE=target/spring-petclinic-2.5.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]