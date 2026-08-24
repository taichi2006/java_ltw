FROM tomcat:10.1-jdk21-temurin

ENV JAVA_OPTS="-Xms128m -Xmx384m"

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Tắt Tomcat shutdown port (Fix triệt để lỗi Invalid shutdown command trên Render)
RUN sed -i 's/port="8005" shutdown="SHUTDOWN"/port="-1" shutdown="SHUTDOWN"/' \
    /usr/local/tomcat/conf/server.xml

# Copy tất cả file .war (ROOT.war, bt1.war, bt2.war...) vào Tomcat
COPY webapps/ /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]