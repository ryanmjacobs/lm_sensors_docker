#!/bin/bash

name=lm_sensors
registry=mu:5000

ver="0.0.6-$(git rev-parse --short HEAD)"

docker build -t "$name:$ver" .

docker tag "$name:$ver" "$registry/$name:$ver"
docker tag "$name:$ver" "$registry/$name:latest"

docker push "$registry/$name:$ver"
docker push "$registry/$name:latest"
