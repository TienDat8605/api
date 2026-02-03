# Use a lightweight Java runtime (Eclipse Temurin is a standard choice)
FROM eclipse-temurin:21-jdk-alpine

# Set a working directory inside the container
WORKDIR /app

# Copy the built jar file into the container
COPY target/*.jar app.jar

# Expose the port Spring runs on (default is 8080)
EXPOSE 8080

# The command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]