#! /bin/bash

jps -l | grep 'superopt.Entry' | cut -d' ' -f1 | xargs kill