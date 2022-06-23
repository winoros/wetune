#!/bin/bash

ops='4'
noprune='false'

# read arguments
while [[ $# -gt 0 ]]; do
  case $1 in
  -ops)
    ops="${2}"
    shift 2
    ;;
  -noprune)
    noprune="true"
    shift 2
    ;;
  *)
    shift
    ;;
  esac
done

gradle :superopt:run --args="RunTemplateExample -ops=${ops} -noprune=${noprune}"