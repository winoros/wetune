#! /bin/bash

jps -l | grep 'superopt.Entry' | cut -d' ' -f1 | xargs kill
ps x | grep 'discover-rules-monitor.sh' | xargs echo | cut -d' ' -f1 | xargs kill