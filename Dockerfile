# Step 1: Use official Tomcat image with Java 17
FROM tomcat:9.0-jdk17-temurin

# Step 2: Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Copy your WAR and rename as ROOT.war for direct access
COPY target/spring-mvc-jdbc-crud-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose port 8080
EXPOSE 8080

# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]
