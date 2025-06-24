# Hello Spring

A simple Spring Boot web application designed for blue-green deployment testing. It renders a basic HTML page that displays the server's hostname and a background color (e.g., blue or green) for visual verification during traffic cutover.

## Purpose

This project is used to demonstrate a blue-green rollout process on a Kubernetes cluster. The application:

- Displays a colored "Hello World" page (blue for v1, green for v2)
- Shows the hostname of the server handling the request
- Helps visually and functionally test Kubernetes traffic routing during gradual rollouts

## Running the App

You can run the app either with Docker or Gradle:

---

### Option 1: Run with Docker

1. Build the Docker image:

   ```bash
   docker build -t hello-spring .
   ```

2. Run the container:

   ```bash
   docker run -p 8000:8000 hello-spring
   ```

3. Visit in your browser:

   ```
   http://localhost:8000
   ```

---

### Option 2: Run with Gradle

1. Use the Gradle wrapper to build and run:

   ```bash
   ./gradlew bootRun --args='--server.port=8000'
   ```

2. Visit in your browser:

   ```
   http://localhost:8000
   ```

---

## Project Structure

- `src/main/resources/templates/index.html` – Thymeleaf template with hostname and color
- `HomeController.java` – Injects hostname into the view
- `Dockerfile` – Used to containerize the app
- `build.gradle` – Contains dependencies (including Thymeleaf)

---
