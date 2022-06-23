SQLSERVER='sqlserver'

recreate=

appName=
dbType=
dbName=

schemaFile=

host=
port=
username=
password=

getDbName() {
  dbType=${SQLSERVER}
  appName=${1}
  postfix=${2:-'base'}
  dbName=${appName}_${postfix}

}

findSchema() {
  local fileName=${appName}.sql
  schemaFile=$(find . -name "$fileName" | head -1)
  if [ ! "$schemaFile" ]; then
    schemaFile=$(find .. -name "$fileName" | head -1)
  fi
  schemaFile=${schemaFile:?"$fileName not found"}
}

getConnProp() {
  host=${1:-'10.0.0.103'}
  port=${2:-'1433'}
  username=${3:-'SA'}
  password=${4:-'mssql2019Admin'}
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
  sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" -i "$schemaFile"
}

if [ "$1" = "-r" ]; then
  recreate='true'
  shift
fi

if [ "$1" = 'all' ]; then
  for db in 'broadleaf' 'diaspora' 'discourse' 'eladmin' 'fatfreecrm' 'febs' 'forest_blog' 'gitlab' 'guns' 'halo' 'homeland' 'lobsters' 'publiccms' 'pybbs' 'redmine' 'refinerycms' 'sagan' 'shopizer' 'solidus' 'spree'
  do
    getDbName "$db" "$2" # e.g. broadleaf base
    getConnProp "$3" "$4" "$5" "$6"
    findSchema
    doMakeTable
  done
else
  getDbName "$1" "$2" # e.g. broadleaf base
  getConnProp "$3" "$4" "$5" "$6"
  findSchema
  doMakeTable
fi
