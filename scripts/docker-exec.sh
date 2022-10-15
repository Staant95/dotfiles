#!/bin/bash

if [ -z "$1" ]; then
    echo "No container name provided"
    exit 1
fi

CONTAINER=$(docker container ls | grep $1 | awk '{print $1}')


if [ -z "$CONTAINER" ]; then
    echo "No container found"
    exit 1
fi

docker exec -it $CONTAINER /bin/bash

