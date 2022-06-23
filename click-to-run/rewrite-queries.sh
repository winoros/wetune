#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
verbose='0'
rewrite_dir="rewrite"
result_dir='result'

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-R" | "-rules")
    rules="${2}"
    shift 2
    ;;
  "-v" | "-verbose")
    verbose="${2}"
    shift 2
    ;;
  "-spes")
    spes='true'
    shift
    ;;
  "-calcite")
    calcite='true'
    shift
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

if [ -z "${rules}" ]; then
  if [ -n "${spes}" ]; then
    rules='rules/rules.spes.txt'
    if ! [ -f "${data_dir}/${rules}" ]; then
      rules='prepared/rules.spes.txt'
    fi
  else
    rules='rules/rules.txt'
    if ! [ -f "${data_dir}/${rules}" ]; then
      rules='prepared/rules.txt'
    fi
  fi
fi

if [ -n "${spes}" ]; then
  result_dir='result_spes'
fi

set -- "${positional_args[@]}"

cwd=$(pwd)

if [ -n "${calcite}" ]; then
  gradle :superopt:run --args="RunCalciteTest -T=GenerateRewritings -R=${rules}"

  cd "${data_dir}/calcite/" || exit

  dir=$(ls -t -1 | grep 'run.\+' | head -1)
  ln -sfr "${dir}" "${result_dir}"
  echo "$(cut -f1,2 "${result_dir}/1_query.tsv" | uniq | wc -l) queries rewritten."

else
  gradle :superopt:run --args="RewriteQuery -v=${verbose} -R=${rules}"

  cd "${data_dir}/${rewrite_dir}" || exit

  dir=$(ls -t -1 | grep 'run.\+' | head -1)
  ln -sfr "${dir}" "${result_dir}"
  echo "$(cut -f1,2 "${result_dir}/1_query.tsv" | uniq | wc -l) queries rewritten."
fi

cd "${cwd}" || exit