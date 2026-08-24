FROM tomcat:9.0-jdk11-corretto

# Xóa các ứng dụng mặc định của Tomcat cho nhẹ
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy tất cả các file .war trong thư mục webapps ở máy bạn vào Tomcat
COPY webapps/ /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]