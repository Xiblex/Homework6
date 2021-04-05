FROM ubuntu:latest

RUN apt-get update && apt-get install maven -y && apt-get install git -y

RUN apt-get install wget \
    && mkdir -p /usr/local/tomcat \
    && wget https://mirrors.nav.ro/apache/tomcat/tomcat-9/v9.0.44/bin/apache-tomcat-9.0.44.tar.gz -O /tmp/tomcat.tar.gz \
    && cd /tmp && tar xvfz /tmp/tomcat.tar.gz \
    && cp -Rv /tmp/apache-tomcat-9.0.44/* /usr/local/tomcat/

#RUN git clone https://github.com/jonbos/CaucusCalculator.git
#WORKDIR /usr/local/tomcat/CaucusCalculator/
#RUN mvn package

#RUN cp ./target/CaucusCalculator-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
#RUN cp -r  ./target/CaucusCalculator-0.0.1-SNAPSHOT /usr/local/tomcat/webapps/CaucusCalculator-0.0.1-SNAPSHOT

EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run