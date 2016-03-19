#!/bin/bash
docker run -d --name docker-tomcat-1 -p 8080:8080 tomcat
docker run -d --name docker-tomcat-2 -p 8081:8080 tomcat
