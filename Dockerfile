# Step 1: Use a lightweight JDK 17 image
FROM eclipse-temurin:17-jdk-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the JAR from your target folder to the container
# We use 'ciexample.jar' because that is what you set in <finalName>
COPY target/ciexample.jar app.jar

# Step 4: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]