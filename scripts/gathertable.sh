#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
rewrite_dir="rewrite/result"

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-queries")
    queries="${2}"
    shift 2
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

set -- "${positional_args[@]}"

cd "${data_dir}" || echo "data dir not found: ${data_dir}" && exit 1

if [ -z "${queries}" ]; then
  if [ -f "${rewrite_dir}/2_query.tsv" ]; then
    queries='2_query.tsv'
  elif [ -f "${rewrite_dir}/1_query.tsv" ]; then
    queries='1_query.tsv'
  else
    echo "please specify the file of queries"
    exit 1
  fi
fi

gradle :superopt:run --args="runner.GatherAccessedTables -i=${queries}"
