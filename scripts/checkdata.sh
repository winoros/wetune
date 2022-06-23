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

doCheckData() {
  cd "$dataDir" || exit

  for fileName in ./*.csv; do
    fileName=$(basename -- "$fileName")
    local tableName="${fileName%.*}"
    if [ "$dbType" = "$MYSQL" ]; then
      echo "$tableName" "$(mysql -u"$username" -p"$password" -h"$host" -P"$port" -D"$dbName" -N -B -e "SELECT COUNT(1) FROM \`${tableName}\`" 2>/dev/null)"
    else
      echo "${tableName}" "$(PGPASSWORD="$password" psql -U "$username" -h "$host" -p "$port" -d "$dbName" \
        -c "SELECT COUNT(1) FROM \"${tableName}\"" -t)"
    fi
  done
}

dbType "$1" "$2"
getConnProp "$3" "$4" "$5" "$6"
findDataDir
doCheckData
