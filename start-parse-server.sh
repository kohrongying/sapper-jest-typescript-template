#!/bin/bash

run_mongo() {
  docker run --name my-mongo -d mongo
}

check_arguments() {
  if (( $# != 2 )); then
    echo "Please input <appId> <masterKey>"
    exit 1
  else
    echo "Received appId=$1, masterKey=$2"
    return 0
  fi
}

run_parse() {
  if check_arguments $1 $2; then 
    docker run --name my-parse-server -v cloud-code-vol:/parse-server/cloud -v config-vol:/parse-server/config -p 1337:1337 --link my-mongo:mongo -d parse-server --appId "$1" --masterKey "$2" --databaseURI mongodb://mongo/test
  fi
}

run_mongo
run_parse $1 $2 