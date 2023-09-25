#!/bin/bash

DIR=$1
[  -z "$1"] && echo "pass the Dir" && exit

IMAGE=$(head -l $DIR/Dockerfile | sed -e 's/#//')
cd $DIR
docker build -t $IMAGE .
docker push $IMAGE
