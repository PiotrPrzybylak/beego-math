#!/bin/bash

docker pull $1/ma-prod:latest
if docker stop ma-app; then docker rm ma-app; fi
docker run -d -p 8080:8080 --name ma-app $1/ma-prod
if docker rmi $(docker images --filter "dangling=true" -q --no-trunc); then :; fi
