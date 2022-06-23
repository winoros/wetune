#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
profile_dir="profile"
result_dir='result'
tag="base"
optimizer="WeTune"

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-tag")
    tag="${2}"
    shift 2
    ;;
  "-spes")
    spes='true'
    result_dir='result_spes'
    optimizer="SPES"
    shift 1
    ;;
  "-calcite")
    calcite='true'
    profile_dir="profile_calcite"
    shift 1
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

cwd=$(pwd)

if [ -n "${calcite}" ]; then
  gradle :testbed:run --args="ProfileCalcite -dir=${profile_dir} -tag=${tag} "

  cd "${data_dir}/${profile_dir}" || exit
  if ! [ -e "${result_dir}" ]; then
    mkdir ${result_dir}
  fi

  file=$(ls -t -1 | grep "${tag}.\+" | head -1)
  ln -sf "../${file}" "${result_dir}/${tag}"
else
  gradle :testbed:run --args="Profile -dir=${profile_dir} -tag=${tag} -optimizer=${optimizer} "

  cd "${data_dir}/${profile_dir}" || exit
  if ! [ -e "${result_dir}" ]; then
    mkdir ${result_dir}
  fi

  file=$(ls "${optimizer}/" -t -1 | grep "${tag}.\+" | head -1)
  ln -sf "../${optimizer}/${file}" "${result_dir}/${tag}"
fi

cd "${cwd}" || exit
