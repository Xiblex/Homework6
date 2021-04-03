FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y

ADD ./ROOT/ /usr/local/tomcat/webapps/

EXPOSE 8080