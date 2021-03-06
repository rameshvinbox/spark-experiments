#!/usr/bin/env bash

if [ -z ${1+x} ]; then
    ROOT_DIR=$PWD
else
    ROOT_DIR=$1
fi

echo "Root dir is $ROOT_DIR"

docker run -d -p 49160:22 -p 49161:1521 -p 49162:8080  -v $ROOT_DIR/data:/test/data  -v $ROOT_DIR/src/test/resources:/test/cfg  alexeiled/docker-oracle-xe-11g > oracle.docker.id


