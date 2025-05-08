# hello-spring

A Spring Boot demo that serves a static `index.html` with "Hello, World!" using Gradle and Docker.

## Run with Docker

docker build -t hello-spring-gradle .
docker run -p 8000:8000 hello-spring-gradle