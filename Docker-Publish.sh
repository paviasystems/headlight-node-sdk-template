#!/bin/bash

echo "Building docker image..."
docker build . -t headlightsdk-app-{{AppHash-LowerCase}}

echo -n "Enter docker username to publish image:"
read docker_user

echo "Publishing docker image..."
docker tag headlightsdk-app-{{AppHash-LowerCase}} $docker_user/headlightsdk-app-{{AppHash-LowerCase}}:latest
docker push $docker_user/headlightsdk-app-{{AppHash-LowerCase}}:latest
