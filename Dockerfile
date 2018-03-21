FROM centos:centos7

RUN yum update -y
RUN yum upgrade -y
RUN yum install -y java-1.8.0-openjdk-devel git wget which 

RUN git clone https://github.com/monksy/centos-maven-install 

#Not sure why the java home isn't set right off the but but it's here  now
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.161-0.b14.el7_4.x86_64/

RUN /centos-maven-install/maven-install.sh

RUN mkdir /daypricing 
WORKDIR /app
RUN git clone http://github.com/monksy/daypricing
WORKDIR /app/daypricing

COPY buildAndRun.sh .
RUN chmod +x buildAndRun.sh

CMD /bin/bash

