FROM gradle:8.5.0-jdk21 AS build
WORKDIR /app
COPY . .
RUN gradle bootJar --no-daemon

FROM amazoncorretto:21-alpine
WORKDIR /app
COPY --from=build /app/build/libs/app.jar app.jar
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8000"]