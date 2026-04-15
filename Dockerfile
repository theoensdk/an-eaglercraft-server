# Use a lightweight Java 17 image (best for performance)
FROM openjdk:17-slim

# Set the folder where our server files will live
WORKDIR /app

# Copy everything from your GitHub repo into the container
COPY . .

# Tell Render to use port 10000 for the WebSocket connection
# (This must match your server.properties port)
EXPOSE 10000

# Start the server with 512MB of RAM (Render Free Tier limit)
CMD ["java", "-Xmx512M", "-Xms512M", "-jar", "server.jar", "nogui"]
