FROM ubuntu
#RUN add-apt-repository ppa:webupd8team/java
#RUN apt-get update && apt-get install -y oracle-java8-installer
RUN apt-get update && apt-get install -y default-jdk
RUN apt-get install -y wget p7zip
RUN wget --no-check-certificate https://github.com/billchen198318/bamboobsc/releases/download/v0.6.6/bamboobsc-0.6.6.7z
RUN p7zip -d bamboobsc-0.6.6.7z
RUN apt-get install -y vim
RUN mkdir /var/gsbsc /var/gsbsc/upload /var/gsbsc/jasperreport
RUN cd /bamboobsc-0.6.6/bamboobsc-06/apache-tomcat-8.0.36/bin && chmod a+x catalina.sh shutdown.sh startup.sh
ENV JAVA_OPTS="-Xmx1440M -XX:+UseG1GC -Djava.awt.headless=true -Dfile.encoding=UTF-8 -Duser.language=en -Duser.country=US"
EXPOSE 8080
RUN apt-get install -y mysql-client
