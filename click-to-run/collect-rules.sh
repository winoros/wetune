#!/bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
enum_dir='enumeration'
rule_dir='rules'
num_partitions=32
num_cpus=$(grep -c ^processor /proc/cpuinfo)
parallelism=4

# read arguments
while [[ $# -gt 0 ]]; do
  case $1 in
  -partition)
    partition="${2}"
    shift 2
    ;;
  *)
    shift
    ;;
  esac
done

# parse partition
if [ -z "${partition}" ]; then
  ((num_partitions = num_cpus / parallelism))
  ((from_partition = 0))
  ((to_partition = num_partitions - 1))
else
  IFS='/' read -ra TMP <<<"${partition}"
  num_partitions="${TMP[0]:-${num_partitions}}"
  IFS='-' read -ra TMP <<<"${TMP[1]}"
  from_partition="${TMP[0]:-0}"
  to_partition="${TMP[1]:-${from_partition}}"

  if [ "${from_partition}" -gt "${to_partition}" ]; then
    echo "Wrong partition spec: ${num_partitions}/${from_partition}-${to_partition}"
    exit 1
  fi
fi

if ! [ -d "${data_dir}/${enum_dir}" ]; then
  echo "no such directory ${data_dir}/${enum_dir}"
  exit 1
fi

cd "${data_dir}"
mkdir -p "${rule_dir}"

t=$(date '+%m%d%H%M%S')
rules_file="${rule_dir}/rules.${t}.txt"

for ((i = from_partition; i <= to_partition; i++)); do
#  run_dir=$(ls -t -1 "${enum_dir}" | grep "run.\+_${i}" | head -1)
  run_dirs=$(ls -t -1 "${enum_dir}" | grep "run.\+_${i}")
  for run_dir in ${run_dirs}; do
    if ! [ -f "${enum_dir}/${run_dir}/success.txt" ]; then
      echo "Excepted ${data_dir}/${enum_dir}/run*_${i}/success.txt does not exist."
      exit 1
    else
      echo "Found partition file: ${data_dir}/${enum_dir}/${run_dir}/success.txt"
    fi
    cat "${enum_dir}/${run_dir}/success.txt" >>"${rules_file}"
  done
done

ln -sfr "${rules_file}" "${rule_dir}/rules.local.txt"
echo "$(wc -l "${rules_file}" | cut -f1 -d' ') rules discovered."
