## Defaults

* These scripts should be invoked from the parent dir of this dir.
* The working directory is `wtune_data`.
* Verbosity Level:
    * 0 - Mute
    * 1 - Error & Warning
    * 2 - Error & Warning Details
    * 3 - Info
    * 4 - Info Details

## Enumerate Rules

```
enumrule.sh 
  [-verbose verbosity]
  [-rerun] 
  [-parallism <num_threads>]
  [-timeout <timeout_in_millis>]
  [<num_partitions>] [<partition_index>]
```

Run rule enumeration.

By default, the script will try to find the checkpoint file of last run and skips completed plan template pairs.

* `-rerun`: ignore last checkpoint file, start over the enumeration.

* `-parallism`: number of threads used to run enumeration.

* `-timeout`: the time budget for each plan template pair.

* `num_partition`: number of partitions of enumeration tasks.

* `partition_index`: index of the partition to run. originated from 0.

#### About partitioned run

Enumeration will take a long time. This options enables task parititons, so that the whole procedure can be done
distributed.

For example, if you want to run the enumeration of 3 machines, distribute the code on each machine and
invoke `enumrule.sh 3 0`, `enumrule.sh 3 1` and
`enumrule.sh 3 2`, respectively.

### Output

```
eumeration/
  run****/         # **** is the timestamp of run
    success.txt    # sucessfully verified rules
    failure.txt    # failed template pairs
    err.txt        # exception stacktraces
    checkpoint.txt # completed template pairs
```

## Collect Enumerated Rules

```
collectrule.sh [-keep <depth>]
```

Collect enumerated rules.

* `-keep`: keep the result of how many runs

This script will scan `enumerate/` and concatenate the `success.txt` of `<depth>` most recent runs.

### Output

```
rules.partial.txt  # enumerated rules
```

## Collect Enumerated Rules From Partitions

```
collectruleall.sh
  [-prefix <host_prefix>]
  [-user <username>]
  [-path <wetune_code_path>]
  [<host_postfix...>]
```

Collect enumerated rule from partitions.

The script invokes `collectrule.sh` on other machine via SSH.

* `-prefix`: prefix of remote host name

* `-user`: username of remote host

* `-path`: path to WeTune code on remote host

* `<host_postfix...>`: postfix of remote host name

For example, the hosts are `10.0.0.101` - `10.0.0.105`, then you can invoke:

`collectruleall.sh -prefix '10.0.0.10' 1 2 3 4 5`

The username and path to WeTune code should be identical on each host.

### Output

```
all_rules/
  run****/                   # **** is the timestamp of run
    rules.{hostname}.txt  # verified rules of each partition
    rules.txt             # verified rules of all partitions
rules.txt                 # soft link to the rules.txt in all_rules/
```

## Optimize Query with Rules

```
rewritequery.sh
  [-verbose verbosity]
  [-rules <path_to_rule_file>]
```

* `-rules`: path to the rule file

This script read rules from `-rules`, and use them to rewrite queries in `wtune.db`.

### Output

```
rewrite/
  run****/      # **** is the timestamp of run
    1_query.tsv # rewritten queries 
    1_trace.tsv # the ordinal of used rules of each rewritten
                  (just the line number in rule file)
    1_err.tsv   # exception stacktraces
  result/       # soft link to the above directory
```

## Gather Accessed Tables

```
gathertable.sh
  [-queries <path_to_rewritten_queries>]
```

This script scans the rewritten queries and gather the accessed tables.

Output of this script can be used as the input of data population, to reduce the data amount need to populate.

### Output

```
rewrite/
  result/
    1_tables.txt   # if the input file is rewrite/result/1_query.txt
    2_tables.txt   # if the input file is rewrite/result/2_query.txt
    <input_file_name>.tables.txt   # otherwise
```

## Create DBs and schemas
```
makedb_mssql.sh
  [-r]
  <app_name | all> <tag>
```
This script aims to create databases and schemas for evaluation.
* `-r` (optional): drop and recreate this database.
* `app_name`: create database called `app_name`, or create databases of all apps. (broadleaf, ... , spree)
* `tag`: 4 workload type of database: base, zipf, large, large_zipf.
It creates database called `app_name`_`tag`. e.g. broadleaf_base.

## Import Data Into DBs
```
importdata_mssql.sh
  [-t <table_name>]
  <app_name | all> <tag>
```
This script aims to dump data into tables for evaluation.
* `-t` (optional): import data into a specific table.
  * need to confirm this table belongs to app specified by 'app_name'
* `app_name`: import data into all used tables of the app, or import tables of all apps. (broadleaf, ... , spree)
* `tag`: 4 workload type of data: base, zipf, large, large_zipf.

