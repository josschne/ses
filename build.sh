#!/usr/bin/env bash

docker build config_3.50_sdk_15.0.0 -t josschne/ses:3.50_sdk_15.0.0
docker build config_3.50_sdk_15.2.0 -t josschne/ses:3.50_sdk_15.2.0

#Test the new image with a smoke test
GET_VERSION=$(docker run -it josschne/ses:3.50_sdk_15.0.0 /ses/bin/emBuild | grep Release)
GET_VERSION=$(docker run -it josschne/ses:3.50_sdk_15.2.0 /ses/bin/emBuild | grep Release)
