FROM ubuntu:16.04
RUN apt-get update
#RUN apt-get install tomcat9 -y
RUN apt-get install maven -y
RUN apt-get install git -y

EXPOSE 80