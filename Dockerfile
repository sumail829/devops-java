FROM gradle:8.14.4-jdk17 AS builder
LABEL maintainer samirpanjiyar4@gmail.com
WORKDIR /java-app
COPY . .
RUN gradle clean build
FROM eclipse-temurin:17-jre-alpine-3.23
COPY --from=builder /java-app/build/libs/*.jar calculator.jar
EXPOSE 8060
CMD ["java", "-jar", "calculator.jar"]
