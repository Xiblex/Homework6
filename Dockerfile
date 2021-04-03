FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y

COPY /ROOT /usr/local/tomcat/webapps

EXPOSE 8080