# Use Java 8 which is native to Minecraft 1.8.8
FROM openjdk:8-jre-slim

WORKDIR /app

# Copy your files into the container
COPY . .

# Expose port 10000 for Render
EXPOSE 10000

# Start the server with memory limits for Render's Free tier
CMD ["java", "-Xmx350M", "-Xms350M", "-XX:+UseSerialGC", "-jar", "server.jar", "nogui"]
