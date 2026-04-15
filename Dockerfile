# Use a modern, supported Java 17 image
FROM eclipse-temurin:17-jre-focal

WORKDIR /app

COPY . .

# Expose port 10000 for Render
EXPOSE 10000

# Start the server
CMD ["java", "-Xmx512M", "-Xms512M", "-jar", "server.jar", "nogui"]
