# Use a modern, supported Java 17 image
FROM eclipse-temurin:17-jre-focal

WORKDIR /app

COPY . .

# Expose port 10000 for Render
EXPOSE 10000

# Start the server
CMD ["java", \
     "--add-opens", "java.base/java.nio=ALL-UNNAMED", \
     "--add-opens", "java.base/sun.nio.ch=ALL-UNNAMED", \
     "-Xmx350M", "-Xms350M", \
     "-XX:+UseSerialGC", \
     "-jar", "server.jar", "nogui"]
