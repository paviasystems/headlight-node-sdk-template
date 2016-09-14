#!/bin/bash

echo "Building docker image..."
docker build . -t {{AppHash-LowerCase}}

echo -n "Enter docker username to publish image:"
read docker_user

echo "Publishing docker image..."
docker tag {{AppHash-LowerCase}} $docker_user/{{AppHash-LowerCase}}:latest
docker push $docker_user/{{AppHash-LowerCase}}:latest
