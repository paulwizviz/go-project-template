#!/bin/bash

OPTION=$1

function usage(){
    echo "Usage: $0 [1.14]"
    echo "Option:"
    echo "  1.14  go version 1.14"
}

if [ "$#" -ne 1 ]; then
    usage
fi

case $OPTION in
    "1.14")
        docker-compose -f ./test/docker/unit-test.yaml run --rm go14
        ;;
    *)
        usage
        ;;
esac


