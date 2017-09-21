#!/bin/bash

result=$( docker ps | grep $1 | grep -o "^[0-9a-z]*" )

if [[ -n "$result" ]]; then
  docker stop $result
  docker rm $result
fi
