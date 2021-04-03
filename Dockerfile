FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y

RUN git clone https://github.com/jonbos/CaucusCalculator.git

RUN cd ./CaucusCalculator/ && mvn package

RUN cd ./CaucusCalculator/taget/ && ls -la

RUN cp ./CaucusCalculator/target/CaucusCalculator-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/
RUN cp ./CaucusCalculator/target/CaucusCalculator-0.0.1-SNAPSHOT /var/lib/tomcat9/webapps/CaucusCalculator-0.0.1-SNAPSHOT

EXPOSE 8080