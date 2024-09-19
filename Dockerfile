# Use the official Tomcat image from Docker Hub
FROM tomcat:9.0

# Copy the contents of the target folder to the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/
