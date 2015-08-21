FROM tomcat:8.0.24-jre8

COPY com.zgardner.msa.app.logging.api.war /usr/local/tomcat/webapps/
