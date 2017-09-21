#!/bin/bash

result=$( docker images | grep $1 | grep -o "^[0-9a-z]*" )
if [[ -n "$result" ]]; then
  echo "Image exist, now erase it"
  docker rmi $result
fi
