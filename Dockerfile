
FROM maven:3.9.7-eclipse-temurin-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q clean package -DskipTests

FROM eclipse-temurin:11-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*-SNAPSHOT.jar app.jar
VOLUME /uploads
ENV FILE_UPLOAD_DIR=/uploads \
    SPRING_DATASOURCE_URL=jdbc:postgresql://db:5432/itteam_messenger
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
