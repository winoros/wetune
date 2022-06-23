#!/bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
rule_dir='rules'

username='zhouz'
prefix='10.0.0.10'
default_ips=(2 3 4 5)
wetune_path='projects/wtune-code'
partition='0-16'

while [[ $# -gt 0 ]]; do
  case "$1" in
  -prefix)
    prefix="$2"
    shift 2
    ;;
  -user)
    username="$2"
    shift 2
    ;;
  -path)
    wetune_path="$2"
    shift 2
    ;;
  -partition)
    partition="$2"
    shift 2
    ;;
  *)
    ips+=("$1")
    shift
    ;;
  esac
done
ips=(${ips[@]:-${default_ips[@]}})

if [ -z "${partition}" ]; then
    echo "Please specify partition to collect. Format: <from_partition>-<to_partition>. e.g., 0-16"
    exit 1
fi

# parse partition
IFS='-' read -ra TMP <<<"${partition}"
from_partition="${TMP[0]:-0}"
to_partition="${TMP[1]:-${from_partition}}"

if [ "${from_partition}" -gt "${to_partition}" ]; then
  echo "Wrong partition spec: ${from_partition}-${to_partition}"
  exit 1
fi

mkdir -p "${data_dir}/${rule_dir}"
cd "${data_dir}/${rule_dir}"
rule_file="rules.raw.txt"

if [ -f "${rule_file}" ]; then
  truncate -s0 "${rule_file}"
fi

num_partitions="${#ips[@]}"
((step=(to_partition-from_partition)/num_partitions))
i="${from_partition}"

for var in "${ips[@]}"; do
  ip="${prefix}${var}"
  x="${i}"
  ((y=x+step))
  echo "${ip}: ${x}-${y}"
  ssh "${username}@${ip}" "cd ${wetune_path}; scripts/collectrule.sh -partition ${x}-${y}"
  scp "${username}@${ip}:${wetune_path}/${data_dir}/${rule_dir}/rules.local.txt" "rules.${ip}.txt"
  cat "rules.${ip}.txt" >>"${rule_file}"
  ((i=y+1))
done
