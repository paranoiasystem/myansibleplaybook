#!/bin/bash

name="${1}"

ids=$(docker images | grep "^$name" | awk '{print $3}')

if [[ -n "$ids" ]]; then
  echo "Image exist, now erase it"
  docker rmi -f $ids
fi

echo "Script end!"
