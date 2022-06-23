#! /bin/bash

data_dir="${WETUNE_DATA_DIR:-wtune_data}"
appName='all'
tag='base'
recreate='true'

host='localhost'
port='1433'
username='SA'
password='mssql2019Admin'

schemaFile=

findSchema() {
  local fileName=${1}.sql
  schemaFile=$(find "${data_dir}" -name "$fileName" | head -1)
}

doMakeTable() {
  if [ "$recreate" ]; then
    echo "drop db $dbName"
    sqlcmd -U "$username" -P "$password" -S "$host","$port" <<EOF
      drop database if exists [${dbName}];
      GO
EOF
  fi
  echo "create db $dbName"
  sqlcmd -U "$username" -P "$password" -S "$host","$port" <<EOF
      create database [${dbName}];
      GO
EOF
  sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" -i "$schemaFile" 1>/dev/null 2>&1
}

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-app")
    appName="${2}"
    shift 2
    ;;
  "-tag")
    tag="${2}"
    shift 2
    ;;
  "-calcite")
    appName='calcite_test'
    shift
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

if [ "$appName" = 'all' ]; then
  for db in 'broadleaf' 'calcite_test' 'diaspora' 'discourse' 'eladmin' 'fatfreecrm' 'febs' 'forest_blog' 'gitlab' 'guns' 'halo' 'homeland' 'lobsters' 'publiccms' 'pybbs' 'redmine' 'refinerycms' 'sagan' 'shopizer' 'solidus' 'spree'
  do
    dbName=${db}_${tag} # e.g. broadleaf_base
    findSchema ${db}
    if [ ! "$schemaFile" ]; then
      continue
    fi
    doMakeTable
  done
else
  dbName=${appName}_${tag}
  findSchema ${appName}
  if [ ! "$schemaFile" ]; then
    echo "db schema not found for ${dbName}."
    exit
  fi
  doMakeTable
fi
