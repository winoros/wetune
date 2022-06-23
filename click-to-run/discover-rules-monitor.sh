#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
enum_dir='enumeration'

# just pass parameters by discover-rules-continuous.sh
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
    useSpes="${2}"
    shift
    ;;
  "-num_partitions")
    num_partitions="${2}"
    shift 2
    ;;
  "-from_partition")
    from_partition="${2}"
    shift 2
    ;;
  "-to_partition")
    to_partition="${2}"
    shift 2
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done


# check whether each process interrupts unexpectedly
declare -A partition_finished
for ((i = from_partition; i <= to_partition; i++)); do
  ((partition_finished[${i}] = 0))
done

while :
do
  # check whether each process has finished
  all_finished=1
  for ((i = from_partition; i <= to_partition; i++)); do
    if [ "${partition_finished[${i}]}" -eq 0 ]; then
      all_finished=0
      break
    fi
  done
  if [ "${all_finished}" -eq 1 ]; then
    break
  fi

  # check whether the process of partition i exists
  for ((i = from_partition; i <= to_partition; i++)); do
    if [ "${partition_finished[${i}]}" -eq 1 ]; then
      continue
    fi

    process_info=$(jps -m | grep "\-partition=${num_partitions}/${i}" | head -1)
    if [ -z "${process_info}" ]; then
      # process of partition i disappears, may be shut down or finished
      prev_enum_dir=$(ls -t -1 "${data_dir}/${enum_dir}" | grep "run.\+_${i}" | head -1)
      checkpoint_file="${enum_dir}/${prev_enum_dir}/checkpoint.txt" # rooted by ${data_dir}
      if grep -q "finished" "${data_dir}/${checkpoint_file}"; then
        ((partition_finished[${i}] = 1))
      else
        nohup gradle :superopt:run \
            --args="EnumRule -v=${verbose} -parallelism=${parallelism} -timeout=${timeout} -partition=${num_partitions}/${i} -useSpes=${useSpes} -checkpoint=${checkpoint_file}" \
            >>"enum_log/num.log.${i}" 2>&1 &
      fi
    fi
  done

  sleep 1m
done
