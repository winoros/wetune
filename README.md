# WeTune
WeTune is a rule generator that can automatically 
discover new query rewrite rules for SQL query optimization.

## Publications 
Zhaoguo Wang, Zhou Zhou, Yicun Yang, Haoran Ding, Gansen Hu, 
Ding Ding, Chuzhe Tang, Haibo Chen, and Jinyang Li. 2022. 
[WeTune: Automatic Discovery and Verification of Query Rewrite Rules.](https://dl.acm.org/doi/10.1145/3514221.3526125) 
In Proceedings of the 2022 International Conference on Management of Data (SIGMOD ’22).

## CodeBase
This codebase includes the source code and the testing scripts in the paper
*Automatic Discovery and Verification of Query Rewrite Rules*

```shell
.
|-- click-to-run    # Click-to-run scripts for WeTune.
|-- lib             # Required external library.
|-- common          # Common utilities.
|-- sql             # Data structures of SQL AST and query plan.
|-- stmt            # Manager of queries from open-source applications.
|-- superopt        # Core algorithm of WeTune.
    |-- fragment    # Plan template enumeration.
    |-- constraint  # Constraint enumeration.
    |-- uexpr       # U-expression.
    |-- logic       # SMT-based verifier.
    |-- optimizer   # Rewriter.
|-- testbed         # Evaluation framework.
|-- spes/           # Integrated SPES-based verifier.
|-- wtune_data/     # Data input/output directory.
    |-- schemas/    # Schemas of applications.
    |-- schemas_mssql/ # Schemas of applications for SQL Server
    |-- wtune.db    # Sqlite DB storing the persistent statistics
```


## Environment Setup

### Requirements

* Java 17
* Gradle 7.3.3
* z3 4.8.9  *(SMT solver)*
* antlr 4.8  *(Generate tokenizer and parser for SQL AST)*
* Microsoft SQL Server 2019 *(Evaluate the usefulness of rules)*

z3 and antlr library have been put in `lib/` off-the-shelf.
You can follow the steps of the script below to set up your environment.

```shell
click-to-run/environment-setup.sh
```

### Compilation

```shell
gradle compileJava
```

## WeTune Workflow

This section gives the instruction of the whole workflow of WeTune, including

1. rule discovery
2. rewriting queries using rules
3. pick useful rules by evaluating the rewritings.

The whole procedure typically takes several days (mainly for rule discovery).

If you are particularly interested in how WeTune works, please refer to the section [Run Example](#run-examples), which
gives instructions of running a few individual examples of the enumeration and equivalence proof. The detailed output
will help understand the internal of WeTune.

### Discover Rules

```shell
# Launch background processes to run rule discovery
click-to-run/discover-rules.sh [-spes]

# After the all processes finished:
click-to-run/collect-rules.sh && click-to-run/reduce-rules.sh [-spes]

# Check progress:
click-to-run/show-progress.sh

# Use this to terminate all process
click-to-run/stop-discovery.sh
```

The first commands launches many processes running in the background.

* `-spes`: use SPES verifier to prove rule correctness. We recommend to use 
`click-to-run/discover-rules-continuous.sh [-spes]` instead for SPES verifier since sometimes the processes 
may be unexpectedly shut down in current implementation, which remains to be fixed in the future work.

The procedure will consume all CPUs and take a long time (~3600 CPU hours) to finish. The discovered rules so far can be
found in `wtune_data/enumeration/run_*/success.txt` (`*` here is a timestamp).

The second commands aggregates `wtune_data/enumeration/run_*/succcess.txt` and reduce the rules (Section 7 in paper).
The resulting rules can be found in `wtune_data/rules/rules.txt`.

* `-spes`: output to `wtune_data/rules/rules.spes.txt`.

The third are used to check the progress. The fourth can terminate all background tasks launched by the first command.

> For the simplicity of demonstration, we separate the enumeration using the built-in and SPES verifier.

> **Why multi-process instead of multi-thread?**
>
> z3 incurs high inter-thread lock contention. The script uses multi-process instead of multi-thread to mitigate this problem.

> Since the rule discovery takes a substantial time, we have provided enumerated rules
> in `wtune_data/prepared/rules.txt` and `wtune_data/prepared/rules.spes.txt`

### Rewrite Queries Using Discovered Rules

```shell
click-to-run/rewrite-queries.sh [-spes] [-calcite] [-R <path/to/rules>]
```

This script uses the rules in `<path/to/rules>` to rewrite queries.

* `-R`: path to rule file, rooted by `wtune_data/`. Default: `wtune_data/rules/rules.txt` if exists,
  otherwise `wtune_data/prepared/rules.txt`.
* `-spes`: if specified, use rules proved by SPES to rewrite queries. Default path to rule file: `wtune_data/rules/rules.spes.txt` if exists,
  otherwise `wtune_data/prepared/rules.spes.txt`. 
* `-calcite`: if specified, rewrite calcite 464 queries. otherwise, rewrite 8000+ application queries.

If rewriting application queries, the rewritten queries can be found in `wtune_data/rewrite/result/1_query.tsv`.
If using SPES rules, the path becomes `wtune_data/rewrite/result_spes/1_query.tsv`.

If rewriting Calcite queries, the rewritten queries can be found in `wtune_data/calcite/result`.
If using SPES rules, the path becomes `wtune_data/calcite/result_spes`.

### Evaluate the Rewritings

```shell
click-to-run/estimate-cost.sh [-spes] [-calcite]
click-to-run/prepare-workload.sh [-spes] [-calcite] [-tag] <workload_type>
click-to-run/profile-cost.sh [-spes] [-calcite] [-tag] <workload_type>
```

These scripts pick the optimized queries and profile them using Sql Server database.

**For database connection parameters in the scripts above 
and in file `common/src/main/java/wtune/common/datasource/DbSupport.java`
, you can change them according to your evaluation environment.**

`click-to-run/estimate-cost.sh` takes previously generated file `wtune_data/rewrite/result/1_query.tsv` as input and
pick one rewritten query with the minimal cost by asking the database's cost model. The result will be stored
in `wtune_data/rewrite/result/2_query.tsv` and used rules will be stored in
`wtune_data/rewrite/result/2_trace.tsv`.

Use `click-to-run/prepare-workload.sh` to prepare profiling workload data in Sql Server database.
It creates databases and corresponding schemas in Sql Server, then generate and import data to Sql Server. 
Dumped data files can be found in directory `wtune_data/dump/`.

And `click-to-run/profile-cost.sh` profiles the optimized queries. The output file is in `wtune_data/profile/result` by
default.

* `-spes`: if you are going to estimate and profile queries optimized by SPES, add this option to the scripts above. 
For `click-to-run/estimate-cost.sh`, it will take `wtune_data/rewrite/result_spes/1_query.tsv` as input
and output file will be in `wtune_data/rewrite/result_spes/` as well.
For profiling, the results will be in `wtune_data/profile/result_spes` instead.
* `-calcite`: if you are going to estimate and profile calcite's 464 queries, add this option. The corresponding directories
will become `wtune_data/calcite/` and `wtune_data/profile_calcite/`.
* `-tag`: workload type. Default type: `base`. See details below.

#### Workload types
In the paper, we evaluate queries on 4 different workload types:

| Workload type | # of rows | Data distribution |
|---------------|-----------|-------------------|
| base          | 10 k      | uniform           |
| zipf          | 10 k      | zipfian           |
| large         | 1 M       | uniform           |
| large_zipf    | 1 M       | zipfian           |

If you would like to evaluate on different type of workload, you
can set `-tag` option to the scripts.

For example, to evaluate queries on workload type of `zipf`, run:
```shell
click-to-run/estimate-cost.sh 
click-to-run/prepare-workload.sh -tag zipf 
click-to-run/profile-cost.sh -tag zipf 
```
The profiling result is actually stored in file `wtune_data/profile/result/{workload_type}` by default.

### View results
Finally, you can run: 
```shell
click-to-run/view-all.sh [-spes] [-calcite]
```
to view rewriting and profiling results together. 
The resulting files are stored in `wtune_data/viewall/result/` by default.
```shell
|-- viewall
    |-- result
        |-- rules.tsv       # Used rules during rewriting
        |-- statistic.tsv   # Rewritten queries and profiling results
```
* `-spes`: view results of queries optimized by SPES. 
Corresponding output files are in `wtune_data/viewall/result_spes/`. 
* `-calcite`: view results of calcite 464 queries. 
Corresponding output files are in `wtune_data/viewall_calcite/result/`.

## Run Examples

This section provides the instruction of run examples:

* template enumeration
* rule verification
* constraint enumeration

### Template Enumeration Example

```shell
click-to-run/run-template-example.sh
```

All templates of max size 4 (after pruning) will be printed, 3113 in total.

### Rule Verification

```shell
click-to-run/run-verify-example.sh [rule_index]
```

`<rule_index>` can be 1-35, corresponds to Table 7 in the paper.

For each rule, the following items will be printed:

* The rule itself.
* A query q0, on which the rule can be applied.
* A query q1, the rewrite result after applying the rule to q0.

For rule 1-31, which can be proved by WeTune built-in verifier, these additional items will be printed:

* A pair of U-Expression, translated from the rule.
* One or more Z3 snippets, the formula submitted to Z3.

> **Why there can be more than one snippet?**
>
> To relief the burden of Z3, When we are going to prove `(p0 /\ p1 ... /\ pn) /\ (q \/ r)` is UNSAT, we separately prove that `(p0 /\ p1 ... /\ pn) /\ q`
and `(p0 /\ p1 /\ ... /\ pn)` are both UNSAT. This is particularly the case when applying theorem 5.2.

### Constraint Enumeration

```shell
click-to-run/run-enum-example.sh [-dump] <rule_index>
```

`<rule_index>` can be 1-35, corresponds to Table 7 in the paper.

`-dump` specifies whether to dump all searched constraint sets to output.

WeTune will enumerate the constraints between the plan template of given rule, and search for the most-relaxed
constraint sets. Each of the examined constraint set and its verification result will be printed. The found rules and
metrics will be appended after enumeration completes.

P.S. If `-dump` is specified, for some pairs, the output floods for a few minutes, you may want to dump it to a file.

## Test Verifier on Calcite

The Calcite queries can be found in `wtune_data/calcite/calcite_tests`.

### Test Query

```shell
click-to-run/verify-calcite-query.sh
```

This script verify the equivalence of Calcite query pairs by directly transforming the entire query into rule. The
ordinal (line number) of 35 verifiable pairs will be printed, together with the rule.

```shell
click-to-run/verify-calcite-transformation.sh
```

This script verify the equivalence of Calcite query pairs by directly both of two queries and checking whether the
rewritten queries coincide, which effectively indicates WeTune can verify the transformation between the two query. The
ordinal (line number) of 73 verifiable pairs will be printed, together with the rewritten query.

