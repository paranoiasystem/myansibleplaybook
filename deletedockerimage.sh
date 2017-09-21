#!/bin/bash

result=$( docker images | grep $1 | grep -o "^[0-9a-z]*" )
if [[ -n "$result" ]]; then
  docker rmi $result
fi
