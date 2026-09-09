FROM tomcat:10.1-jdk21-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY webapps/bt2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

