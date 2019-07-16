#!/bin/bash
# GNU bash, version 4.3.46
get_name() {
 echo "Hello world"
}

echo "Hello $(get_name)"

get_name_param () {
  echo "Hello World $1"
}

get_name_param "Hung"
