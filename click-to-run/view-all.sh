#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
rewrite_dir="rewrite"
profile_dir="profile"
sub_dir="result"

out_dir="viewall"
out_sub_dir="view"

optimizer="WeTune"

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-spes")
    sub_dir="result_spes"
    out_sub_dir="view_spes"
    optimizer="SPES"
    shift 1
    ;;
  "-calcite")
    calcite='-calcite'
    rewrite_dir='calcite'
    profile_dir='profile_calcite'
    out_dir='viewall_calcite'
    shift 1
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

gradle :testbed:run --args="ShowAllStatistics \
  ${calcite} \
  -optimizer=${optimizer} \
  -rewriteDir=${rewrite_dir}/${sub_dir} \
  -profileDir=${profile_dir}/${sub_dir} \
  -out=${out_dir}"

cwd=$(pwd)

cd "${data_dir}/${out_dir}" || exit

dir=$(ls -t -1 | grep 'view.\+' | head -1)
rm ${out_sub_dir}
ln -sfr "${dir}" "${out_sub_dir}"

cd "${cwd}" || exit