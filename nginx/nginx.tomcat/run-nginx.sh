#!/bin/bash
docker run --name docker-nginx -p 80:80 -v ~/nginx/default.conf:/etc/nginx/conf.d/default.conf --link docker-tomcat-1:tomcat -d nginx 

# get default configuration
# docker cp docker-nginx:/etc/nginx/conf.d/default.conf ~/nginx/default.conf
