#!/bin/bash

while getopts ":t:b:" opt; do
  case ${opt} in
    t )
      TAG=$OPTARG
      ;;
  esac
done

if [ "$TAG" == "" ]
then
    TAG="v1" 
    echo "$TAG"
else
    echo "$TAG"
fi

docker build -t hermes-llmnr:"$TAG" . 