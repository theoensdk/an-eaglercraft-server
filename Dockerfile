# Use Java 17 (This version can actually download the files)
FROM eclipse-temurin:17-jre-focal

WORKDIR /app
COPY . .

# Expose the port
EXPOSE 10000

# THE FIX: We add "-Dnetty.packagePrefix=io.netty.util.internal." 
# and the "add-opens" to force the old networking to work on new Java.
CMD ["java", \
     "-Dnetty.packagePrefix=io.netty.util.internal.", \
     "--add-opens", "java.base/java.nio=ALL-UNNAMED", \
     "--add-opens", "java.base/sun.nio.ch=ALL-UNNAMED", \
     "-Xmx350M", "-Xms350M", \
     "-jar", "server.jar", "nogui"]
