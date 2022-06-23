#! /bin/bash

parallelism=8
timeout=600000
verbose=0
num_partitions=16

# read arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
  "-parallelism")
    parallelism="${2}"
    shift 2
    ;;
  "-timeout")
    timeout="${2}"
    shift 2
    ;;
  "-verbose")
    verbose="${2}"
    shift 2
    ;;
  "-partition")
    partition="${2}"
    shift 2
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

if [ -z "${partition}" ]; then
  echo 'Please specify partitions! format: <num_partitions>/<from_partition_index>-<to_partition_index>'
  echo 'e.g., 16/0-3'
  exit 1
fi

# parse partition
IFS='/' read -ra TMP <<<"${partition}"
num_partitions="${TMP[0]:-${num_partitions}}"
IFS='-' read -ra TMP <<<"${TMP[1]}"
from_partition="${TMP[0]:-0}"
to_partition="${TMP[1]:-${from_partition}}"

if [ "${from_partition}" -gt "${to_partition}" ]; then
  echo "Wrong partition spec: ${num_partitions}/${from_partition}-${to_partition}"
  exit 1
fi

echo "parallelism=${parallelism} timeout=${timeout} verbose=${verbose} partition=${num_partitions}/${from_partition}-${to_partition}"

gradle :superopt:compileJava

for ((i = from_partition; i <= to_partition; i++)); do
  nohup gradle :superopt:run \
    --args="runner.EnumRule -v=${verbose} -parallelism=${parallelism} -timeout=${timeout} -partition=${num_partitions}/${i}" \
    >"enum.log.${i}" 2>&1 &
done
