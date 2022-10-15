#!/bin/bash

# create a function that takes a container name as an argument
# and if it exists, it will execute /bin/bash in it as interactive shell

function docker-exec() {
    if [ -z "$1" ]; then
        echo "No container name provided"
        return 1
    fi

    local container="$(docker container ls | grep -i "$1")"

    if [ -z "$container" ]; then
        echo "Could not find container with name $1"
        return 1
    fi

    echo -e "\e[1;32mFound the following container:\e[0m"

    echo "$container"

    local container_id="$(echo $container | awk '{print $1}')"


    docker container exec -it $container_id /bin/bash
}

export -f docker-exec

