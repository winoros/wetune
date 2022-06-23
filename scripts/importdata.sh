#! /bin/bash

POSTGRESQL='postgresql'
MYSQL='mysql'
SQLSERVER='sqlserver'

appName=
postfix=
dbType=
dbName=
dataDir=

host=
port=
username=
password=

table=

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

#  dbType=${MYSQL}
#  appName=${1}

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
  elif [ "$dbType" = "$SQLSERVER" ]; then
    host=${1:-'10.0.0.103'}
    port=${2:-'1433'}
    username=${3:-'SA'}
    password=${4:-'mssql2019Admin'}
  fi
}

findDataDir() {
  local path="$postfix/$appName"
  dataDir=$(find . -type d -wholename "*/$path" | head -1)
  if [ ! "$dataDir" ]; then
    dataDir=$(find .. -type d -wholename "*/$path" | head -1)
  fi
#  dataDir=${dataDir:?"$path not found"}
}

doTruncateOne() {
  local tableName=${1}
  echo "truncating ${tableName}"
  if [ "$dbType" = "$POSTGRESQL" ]; then
    PGPASSWORD="$password" psql -U "$username" -h "$host" -p "$port" -d "$dbName" \
      -c "truncate table ${tableName} cascade" &>/dev/null || echo "truncate ${tableName} failed"
  elif [ "$dbType" = "$SQLSERVER" ]; then
    sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" <<EOF
      ALTER TABLE [${tableName}] NOCHECK CONSTRAINT ALL;
      delete from [${tableName}];
      ALTER TABLE [${tableName}] WITH CHECK CHECK CONSTRAINT ALL;
      GO
EOF
  fi
}

doImportOne() {
  local tableName=${1}
  local fileName="${tableName}.csv"
  local cwd=

  cwd=$(pwd)

  cd "$dataDir" || exit

  echo "importing ${tableName}"
  if [ "$dbType" = "$SQLSERVER" ]; then
    sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" <<EOF
      ALTER TABLE [${tableName}] NOCHECK CONSTRAINT ALL;
      BULK INSERT [${tableName}] FROM '/home/yicun/wtune/wtune_code/wtune_data/dump/${postfix}/${appName}/${tableName}.csv' WITH( FIELDTERMINATOR=';', ROWTERMINATOR='\n' );
      ALTER TABLE [${tableName}] WITH CHECK CHECK CONSTRAINT ALL;
      GO
EOF
  elif [ "$dbType" = "$MYSQL" ]; then
    mysql -u"$username" -p"$password" -h"$host" -P"$port" 2>/dev/null <<EOF
    set global foreign_key_checks=0;
    set global unique_checks=0;
EOF
    mysqlimport --local --fields-terminated-by=';' --fields-optionally-enclosed-by='"' -d \
      -u"$username" -p"$password" -h"$host" -P"$port" --use-threads=8 \
      "$dbName" "${tableName}.csv" #2>/dev/null
    mysql -u"$username" -p"$password" -h"$host" -P"$port" 2>/dev/null <<EOF
    set global foreign_key_checks=1;
    set global unique_checks=1;
EOF
  else
    PGPASSWORD="$password" psql -U "$username" -h "$host" -p "$port" -d "$dbName" <<EOF
      set session_replication_role='replica';
      \copy ${tableName} from ${fileName} delimiter ';' csv
EOF
  fi

  cd "${cwd}" || exit
}

doImportData() {
  echo "gonna import $(find "$dataDir" -maxdepth 1 -name '*.csv' | wc -l) tables in $dataDir to $dbName@$host:$port"
  for fileName in "$dataDir"/*.csv; do
    fileName=$(basename -- "$fileName")
    local tableName="${fileName%.*}"
    doTruncateOne "$tableName"
  done
  for fileName in "$dataDir"/*.csv; do
    fileName=$(basename -- "$fileName")
    local tableName="${fileName%.*}"
    doImportOne "$tableName"
  done
}

if [ "$1" = 'all' ]; then
  for db in 'broadleaf' 'diaspora' 'discourse' 'eladmin' 'fatfreecrm' 'febs' 'forest_blog' 'gitlab' 'guns' 'halo' 'homeland' 'lobsters' 'publiccms' 'pybbs' 'redmine' 'refinerycms' 'sagan' 'shopizer' 'solidus' 'spree'
#  for db in 'broadleaf' 'diaspora' 'discourse' 'eladmin' 'fatfreecrm' 'forest_blog' 'gitlab' 'homeland' 'lobsters' 'redmine' 'refinerycms' 'shopizer' 'solidus' 'spree'
  do
    dbType "$db" "$2"
    getConnProp "$3" "$4" "$5" "$6"
    findDataDir
    if [ ! "$dataDir" ]; then
      continue
    fi

    doImportData
  done
else
  if [ "$1" = '-t' ]; then
    table="$2"
    shift 2
  fi

  dbType "$1" "$2"
  getConnProp "$3" "$4" "$5" "$6"
  findDataDir
  if [ ! "$dataDir" ]; then
    echo "data not found for ${dbName}."
    exit
  fi

  if [ -z "$table" ]; then
    doImportData
  else
    doImportOne "$table"
  fi
fi
