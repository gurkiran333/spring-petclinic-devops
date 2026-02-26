# CI/CD Automation for Spring PetClinic (DevOps Project)

This repository demonstrates a **production-style CI/CD pipeline**
implemented for the **Spring PetClinic** application using
**Jenkins, Docker, and Gradle**.

> **Important Note**  
> The application source code is an official open-source sample
> maintained by the Spring team.  
> This project focuses **only on DevOps automation, containerization,
> and deployment practices**.

---

## Project Objective

The goal of this project is to demonstrate how a DevOps engineer:

- Automates build and deployment pipelines
- Containerizes a real-world Spring Boot application
- Applies CI/CD best practices used in production environments
- Works with existing application code (real industry scenario)

---

## Tech Stack

| Category | Technology |
|--------|-----------|
| Language | Java 17 |
| Framework | Spring Boot |
| Build Tool | Gradle |
| CI/CD | Jenkins (Declarative Pipeline) |
| Containerization | Docker (Multi-stage build) |
| Base Image | eclipse-temurin |
| Application Port | 8081 |

---

## What I Implemented (My Contribution)

✔ Jenkins Declarative Pipeline  
✔ Gradle-based automated build  
✔ Docker multi-stage image creation  
✔ Automated container deployment  
✔ Clean, repeatable CI/CD workflow  

> The **application logic is not modified**.  
> The **entire CI/CD and Docker setup is designed and implemented by me**.

---

## CI/CD Pipeline Flow

1. Checkout source code from GitHub
2. Build Spring Boot application using Gradle
3. Create Docker image using multi-stage Dockerfile
4. Remove existing container (if any)
5. Deploy application as a Docker container

---

## Jenkinsfile Overview

Pipeline stages:
- **Checkout**
- **Build Application**
- **Build Docker Image**
- **Run Docker Container**

The pipeline is fully automated and requires no manual intervention.

---

## Docker Strategy

- Multi-stage Docker build
- JDK used only for build stage
- Lightweight JRE image for runtime
- Final image contains only the executable JAR

**Benefits**
- Smaller image size
- Improved security
- Faster deployments

---

## How to Run (Using Jenkins)

### Prerequisites
- Jenkins installed
- Docker installed on Jenkins node
- Git installed

### Steps
1. Create a Jenkins **Pipeline** job
2. Connect this repository
3. Jenkins will auto-detect the `Jenkinsfile`
4. Click **Build Now**

Application will be available at: http://<jenkins-server-ip>:8080

## Author

**Gurkiran Singh**  
DevOps Engineer
GitHub: https://github.com/gurkiran333

