#!/bin/bash

name=nginx2node
docker kill $name
docker rm $name
docker run --name $name -v $(pwd)/default.conf:/etc/nginx/conf.d/default.conf:ro -p 80:80 -d nginx
