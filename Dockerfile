FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y

RUN git clone https://github.com/jonbos/CaucusCalculator.git

RUN cd ./CaucusCalculator/ && mvn package

COPY ./target/CaucusCalculator-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/
COPY ./target/CaucusCalculator-0.0.1-SNAPSHOT /var/lib/tomcat9/webapps/CaucusCalculator-0.0.1-SNAPSHOT

EXPOSE 8080