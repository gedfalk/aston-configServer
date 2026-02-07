FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn package -DskipTests

FROM eclipse-temurin:21-jre
WORKDIR /app

RUN apt-get update && \
    apt-get install -y git curl bash && \
    rm -rf /var/lib/apt/lists/*

COPY --from=build /build/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]