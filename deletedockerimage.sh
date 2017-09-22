#!/bin/bash

name="${1}"

ids=$(docker images | grep "^$name" | awk '{print $3}')
[[ -n $ids ]] && docker rmi -f $ids
