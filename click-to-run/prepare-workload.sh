#! /bin/bash
tag="base"
spes=
calcite=

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-tag")
    tag="${2}"
    shift 2
    ;;
  "-spes")
    spes="-spes"
    shift 1
    ;;
  "-calcite")
    calcite="-calcite"
    shift 1
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

click-to-run/make-db.sh ${calcite} -tag ${tag}
click-to-run/generate-data.sh ${spes} ${calcite} -tag ${tag}
