#! /bin/bash

verbose='0'
data_dir="${WETUNE_DATA_DIR:-wtune_data}"
rewrite_dir="rewrite"
rules='rules/rules.txt'

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-rules")
    rules="${2}"
    shift 2
    ;;
  "-verbose")
    verbose="${2}"
    shift 2
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

set -- "${positional_args[@]}"

gradle :superopt:run --args="RewriteQuery -v=${verbose} -R=${rules}"

cd "${data_dir}/${rewrite_dir}" || exit

dir=$(ls -t -1 | ag 'run.+' | head -1)
ln -sfr "${dir}" 'result'
