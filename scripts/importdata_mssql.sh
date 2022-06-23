#! /bin/bash
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

defaultDataPath=

getDefaultDataPath() {
  local cwd=$(pwd)
  cd "../wtune_data" || exit
  defaultDataPath=$(pwd)
  cd "${cwd}" || exit
}

dbType() {
  dbType=${SQLSERVER}
  appName=${1}

  postfix=${2?:"no postfix specified"}
  dbName=${appName}_${postfix}
}

getConnProp() {
  host=${1:-'10.0.0.103'}
  port=${2:-'1433'}
  username=${3:-'SA'}
  password=${4:-'mssql2019Admin'}
}

findDataDir() {
  local path="$postfix/$appName"
  dataDir=$(find . -type d -wholename "*/$path" | head -1)
  if [ ! "$dataDir" ]; then
    dataDir=$(find .. -type d -wholename "*/$path" | head -1)
  fi
#  dataDir=${dataDir:-"not found"}
}

doTruncateOne() {
  local tableName=${1}
  echo "truncating ${tableName}"

#  sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" -i "${defaultDataPath}/schemas_mssql/${appName}.sql"
  sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" <<EOF
    delete from [${tableName}];
    GO
EOF
}

doImportOne() {
  local tableName=${1}
  local fileName="${tableName}.csv"
  local cwd=

  cwd=$(pwd)

  cd "$dataDir" || exit

  echo "importing ${tableName}"

  sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" <<EOF
    ALTER TABLE [${tableName}] NOCHECK CONSTRAINT ALL;
    BULK INSERT [${tableName}] FROM '${defaultDataPath}/dump/${postfix}/${appName}/${tableName}.csv' WITH( FIELDTERMINATOR=';', ROWTERMINATOR='\n' );
    ALTER TABLE [${tableName}] WITH CHECK CHECK CONSTRAINT ALL;
    GO
EOF

  cd "${cwd}" || exit
}

enableConstraints() {
  local tableName=${1}
  sqlcmd -U "$username" -P "$password" -S "$host","$port" -d "$dbName" <<EOF
    ALTER TABLE [${tableName}] WITH CHECK CHECK CONSTRAINT ALL;
    GO
EOF
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
  for fileName in "$dataDir"/*.csv; do
    fileName=$(basename -- "$fileName")
    local tableName="${fileName%.*}"
    enableConstraints "$tableName"
  done
}

getDefaultDataPath
if [ "$1" = 'all' ]; then
  for db in 'broadleaf' 'diaspora' 'discourse' 'eladmin' 'fatfreecrm' 'febs' 'forest_blog' 'gitlab' 'guns' 'halo' 'homeland' 'lobsters' 'publiccms' 'pybbs' 'redmine' 'refinerycms' 'sagan' 'shopizer' 'solidus' 'spree'
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

  dbType "$1" "$2" # appName, tag
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
