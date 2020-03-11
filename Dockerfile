FROM tomcat:9.0.24
VOLUME /tmp
COPY target/erp.war /usr/local/tomcat/webapps/erp.war
EXPOSE 8086
ENTRYPOINT [ "sh", "-c", "java -Dspring.profiles.active=docker -Djava.security.egd=file:/dev/./urandom -jar /usr/local/tomcat/webapps/erp.war" ]