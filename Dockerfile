FROM tomcat:10.1-jdk21-temurin

ENV JAVA_OPTS="-Xms128m -Xmx384m"

# Xóa ứng dụng mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy toàn bộ file WAR vào Tomcat
COPY webapps/ /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]