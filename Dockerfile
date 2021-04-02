FROM tomcat:8.0-alpine
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y

EXPOSE 8080