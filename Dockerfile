# Use the supported Eclipse Temurin Java 8 image
FROM eclipse-temurin:8-jre-alpine

# Set the working directory
WORKDIR /app

# Copy all files from your GitHub repo to the container
COPY . .

# Expose port 10000 for Render
EXPOSE 10000

# Start the server with optimized RAM settings for Render's free tier
CMD ["java", "-Xmx350M", "-Xms350M", "-XX:+UseSerialGC", "-jar", "server.jar", "nogui"]
