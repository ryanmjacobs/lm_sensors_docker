#!/bin/bash

name=lm_sensors
ver=0.0.3
docker build -t "$name:$ver" .
docker tag "$name:$ver" 10.0.10.20:5000/"$name:$ver"
docker push 10.0.10.20:5000/"$name:$ver"
