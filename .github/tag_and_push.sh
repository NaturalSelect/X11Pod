#!/bin/bash

TAG="commit-$(date +%s)"

docker tag $(docker images | grep x11pod | awk '{print $1}') naturalselect/x11pod:${TAG}
docker push naturalselect/x11pod:${TAG}
docker push naturalselect/x11pod:latest
