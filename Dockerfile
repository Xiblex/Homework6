FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y

RUN git clone https://github.com/jonbos/CaucusCalculator.git

RUN cd ./CaucusCalculator/ && mvn package

RUN cp ./CaucusCalculator/target/CaucusCalculator-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
RUN cp ./CaucusCalculator/target/CaucusCalculator-0.0.1-SNAPSHOT /usr/local/tomcat/webapps/CaucusCalculator-0.0.1-SNAPSHOT

EXPOSE 8080