#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
verbose='0'
rewrite_dir="rewrite"
result_dir="result"
optimizer="WeTune"

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-v" | "-verbose")
    verbose="${2}"
    shift 2
    ;;
  "-spes")
    spes='true'
    result_dir="result_spes"
    optimizer="SPES"
    shift 1
    ;;
  "-calcite")
    calcite='true'
    rewrite_dir='calcite'
    shift 1
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

gradle :superopt:run --args="PickMinCost -v=${verbose} -D=${rewrite_dir}/${result_dir}"

cwd=$(pwd)
cd "${data_dir}/${rewrite_dir}" || exit
echo "$(cut -f1,2 "${result_dir}/2_query.tsv" | uniq | wc -l) queries rewritten."
cd "${cwd}" || exit

if [ -n "${calcite}" ]; then
  gradle :superopt:run --args="UpdateOptStmts -v=${verbose} -optimizer=${optimizer} -calcite"
else
  gradle :superopt:run --args="UpdateOptStmts -v=${verbose} -optimizer=${optimizer} "
fi