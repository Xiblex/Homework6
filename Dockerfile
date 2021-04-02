FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y

EXPOSE 8080