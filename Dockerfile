FROM tomcat:8.0.24-jre8

COPY target/di-*.war /usr/local/tomcat/webapps/logging.war
