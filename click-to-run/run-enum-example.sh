#!/bin/bash

dump='false'

# read arguments
while [[ $# -gt 0 ]]; do
  case $1 in
  -dump)
    dump='true'
    shift
    ;;
  *)
    index="${1}"
    shift
    ;;
  esac
done

gradle :superopt:run --args="RunEnumExample -v=${dump} -I=${index}"
