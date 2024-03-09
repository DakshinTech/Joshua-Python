#!/bin/bash
sudo yum install java-1.8.0-openjdk-devel -y
java -version
cd /opt 
sudo yum install wget -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz
sudo tar -xvf apache-tomcat-9.0.55.tar.gz
sudo rm apache-tomcat-9.0.55.tar.gz
cd /opt
ls
sudo chmod 555 -R apache-tomcat-9.0.55
pwd
cd /opt/apache-tomcat-9.0.55/bin
ls
Creat a soft link 
ln -s /opt/apache-tomcat-9.0.55/bin/startup.sh usr/bin/startTomcat
ln -s /opt/apache-tomcat-9.0.55/bin/shutdown.sh usr/bin/stopTomcat
startup.sh
ps -ef | grep tomcat 
http://ip:port number
Please make sure http(8080) is open In security group open port http.or open all tcp ports in SG

Defaulty its not allow to open the page we need to enter to cd /webapps/manager/META-INF/context.xml

in tomcat-users.xml add users
