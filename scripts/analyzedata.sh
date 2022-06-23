#! /bin/bash

POSTGRESQL='postgresql'
MYSQL='mysql'

appName=
postfix=
dbType=
dbName=
dataDir=

host=
port=
username=
password=

dbType() {
  if [ "$1" = 'discourse' ] || [ "$1" = 'gitlab' ] || [ "$1" = 'homeland' ]; then
    dbType=${POSTGRESQL}
    appName=${1}
  else
    head="${1%:*}"
    tail="${1##*:}"
    if [ "${tail}" != "$1" ]; then
      dbType=${tail}
      appName=${head}
    else
      dbType=${MYSQL}
      appName=${1}
    fi
  fi
  postfix=${2?:"no postfix specified"}
  dbName=${appName}_${postfix}
}

getConnProp() {
  if [ "$dbType" = "$POSTGRESQL" ]; then
    host=${1:-'10.0.0.103'}
    port=${2:-'5432'}
    username=${3:-'root'}
    password=${4}
  elif [ "$dbType" = "$MYSQL" ]; then
    host=${1:-'10.0.0.103'}
    port=${2:-'3306'}
    username=${3:-'root'}
    password=${4:-'admin'}
  fi
}

findDataDir() {
  local path="$appName/$postfix"
  dataDir=$(find . -type d -wholename "*/$path" | head -1)
  if [ ! "$dataDir" ]; then
    dataDir=$(find .. -type d -wholename "*/$path" | head -1)
  fi
  dataDir=${dataDir:?"$path not found"}
}

doAnalyzeData() {
  cd "$dataDir" || exit

  for fileName in ./*.csv; do
    fileName=$(basename -- "$fileName")
    local tableName="${fileName%.*}"
    if [ "$dbType" = "$MYSQL" ]; then
      mysql -u"$username" -p"$password" -h"$host" -P"$port" -D"$dbName" -N -B -e "analyze table \`${tableName}\`" 2>/dev/null | cut -f1,4
    else
      PGPASSWORD="$password" psql -U "$username" -h "$host" -p "$port" -d "$dbName" \
        -c "analyze \"${tableName}\"" -t >/dev/null && printf "%s\tOK\n" "${tableName}"
    fi
  done
}

dbType "$1" "$2"
getConnProp "$3" "$4" "$5" "$6"
findDataDir
doAnalyzeData
