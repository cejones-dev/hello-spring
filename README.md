# hello-spring

A minimal Spring Boot demo that serves a static `index.html` with "Hello, World!" using Gradle and Docker. Runs over HTTP on port 8000 using Amazon Corretto 21.

## Run with Docker

```bash
docker build -t hello-spring .
docker run -p 8000:8000 hello-spring
