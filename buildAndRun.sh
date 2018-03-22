#! /bin/bash

cd "$(dirname "$0")"

#Build 
mvn package 

#Execute 
java -Dconfig.file=application.json -jar target/*allinone*jar

#Note: the -Dconf.file= is assumed to be application.json by default. The current working directory puts this in the right place.
