#!/usr/bin/env bash

docker build build

#Test the new image with a smoke test
GET_VERSION=$(docker run -it josschne/ses /ses/bin/emBuild | grep Release)
