#! /bin/bash

gradle :superopt:run --args='RunCalciteTest -T=VerifyRule -R=prepared/rules.txt'
