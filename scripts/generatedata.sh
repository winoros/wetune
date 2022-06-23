#! /bin/bash

targetFile='rewrite/result/2_tables.txt'
if [[ ! -f "${targetFile}" ]]; then
  targetFile='rewrite/result/1_tables.txt'
fi
tag='base'
verbose='0'

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-targetFile")
    targetFile="${2}"
    shift 2
    ;;
  "-tag")
    tag="${2}"
    shift 2
    ;;
  "-target")
    target="${2}"
    shift 2
    ;;
  *)
    positionalArgs+=("${1}")
    shift
    ;;
  esac
done

if [ -n "${target}" ]; then
  gradle :testbed:run --args="runner.GenerateTableData -T=${target} -t=${tag} -v=${verbose}"
else
  gradle :testbed:run --args="runner.GenerateTableData -targetFile=${targetFile} -t=${tag} -v=${verbose}"
fi
