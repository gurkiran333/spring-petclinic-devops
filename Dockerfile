# ---------- Stage 1: Build ----------
FROM eclipse-temurin:17-jdk AS build
WORKDIR /app
# Gradle wrapper & config copy (cache ke liye)
COPY gradlew .
COPY gradle gradle
COPY build.gradle settings.gradle ./
# Gradle executable permission
RUN chmod +x gradlew
# Dependencies download (layer caching)
RUN ./gradlew dependencies --no-daemon || true
# Source code copy
COPY src src
# Application build
RUN ./gradlew build -x test --no-daemon


# ---------- Stage 2: Runtime ----------
FROM eclipse-temurin:17-jre
WORKDIR /app
# Build stage se jar copy
COPY --from=build /app/build/libs/*.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","app.jar"]
