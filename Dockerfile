FROM tomcat:10.1-jdk21-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY webapps/*.war /usr/local/tomcat/webapps/

EXPOSE 8080