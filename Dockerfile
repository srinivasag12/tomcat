FROM centos:7

RUN yum update -y

RUN yum install wget -y

RUN yum install java-11-openjdk-* -y

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.6/bin/apache-tomcat-10.1.6.tar.gz

RUN tar -xvzf apache-tomcat-10.1.6.tar.gz

RUN mv apache-tomcat-10.1.6/* /opt/tomcat

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
