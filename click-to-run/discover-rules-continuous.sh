#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
enum_dir='enumeration'

parallelism=4
timeout=900000
verbose=0
useSpes='false'
num_partitions=32
num_cpus=$(grep -c ^processor /proc/cpuinfo)

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
  "-spes")
    useSpes='true'
    shift
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

if [ -e "${data_dir}/${enum_dir}" ]; then
  rm -rf "${data_dir}/${enum_dir}/run*"
fi

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

gradle compileJava

echo "Begin rule discovery. "
echo "#process=${num_partitions}  #threads_per_process=${parallelism} timeout_per_pair=${timeout}ms"

mkdir -p enum_log

for ((i = from_partition; i <= to_partition; i++)); do
  nohup gradle :superopt:run \
    --args="EnumRule -v=${verbose} -parallelism=${parallelism} -timeout=${timeout} -partition=${num_partitions}/${i} -useSpes=${useSpes}" \
    >"enum_log/num.log.${i}" 2>&1 &
done

# check whether each process interrupts unexpectedly
echo "Set up a monitor to check whether each process interrupts unexpectedly."

nohup click-to-run/discover-rules-monitor.sh \
  -parallelism "${parallelism}" \
  -timeout "${timeout}" \
  -verbose "${verbose}" \
  -spes "${useSpes}" \
  -num_partitions "${num_partitions}" \
  -from_partition "${from_partition}" \
  -to_partition "${to_partition}" >/dev/null 2>&1 &
