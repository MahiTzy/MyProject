FROM tomcat:9-jdk17

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY /dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Copy MySQL connector JAR into Tomcat's lib directory
COPY mysql-connector-java-*.jar /usr/local/tomcat/lib/

# Set environment variables for MySQL connection
ENV DB_HOST=db
ENV DB_PORT=3306
ENV DB_NAME=oesdb
ENV DB_USER=root
ENV DB_PASSWORD=root

CMD ["catalina.sh", "run"]
