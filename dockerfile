# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the build directory contents into the container at /app
COPY build/libs/*.jar app.jar

# Expose port 3700 to the outside world
EXPOSE 3700

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
