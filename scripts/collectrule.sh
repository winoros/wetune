#!/bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
enum_dir='enumeration'
rule_dir='rules'

# read arguments
while [[ $# -gt 0 ]]; do
  case $1 in
  -partition)
    partitions="${2}"
    shift 2
    ;;
  *)
    shift
    ;;
  esac
done

if [ -z "${partitions}" ]; then
    echo "Please specify partition to collect. Format: <from_partition>-<to_partition>. e.g., 0-3"
    exit 1
fi

# parse partition
IFS='-' read -ra TMP <<<"${partitions}"
from_partition="${TMP[0]:-0}"
to_partition="${TMP[1]:-${from_partition}}"

if [ "${from_partition}" -gt "${to_partition}" ]; then
  echo "Wrong partition spec: ${from_partition}-${to_partition}"
  exit 1
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
  run_dir=$(ls -t -1 "${enum_dir}" | ag "run.+_${i}" | head -1)
  if [ -z "${run_dir}" ] || ! [ -f "${enum_dir}/${run_dir}/success.txt" ]; then
    echo "Excepted ${data_dir}/${enum_dir}/run*_${i}/success.txt does not exist."
    exit 1
  else
    echo "Found partitioin file: ${data_dir}/${enum_dir}/${run_dir}/success.txt"
  fi
  cat "${enum_dir}/${run_dir}/success.txt" >>"${rules_file}"
done

ln -sfr "${rules_file}" "${rule_dir}/rules.local.txt"
