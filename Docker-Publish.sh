#!/bin/bash

echo "Building docker image..."
docker build . -t headlightsdk_app_{{AppHash-LowerCase}}

echo -n "Enter docker username to publish image:"
read docker_user

echo "Publishing docker image..."
docker tag headlightsdk_app_{{AppHash-LowerCase}} $docker_user/headlightsdk_app_{{AppHash-LowerCase}}:latest
docker push $docker_user/headlightsdk_app_{{AppHash-LowerCase}}:latest
