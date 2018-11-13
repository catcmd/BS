#!/usr/bin/env bash

cat filename | grep "root"

#start of line
cat filename | grep "^root"

# start of line and root is end of word
cat filename | grep "^root\>"

#" and translate o to a"
cat file |grep "^root\>" | tr o sa

# " and delete ";"
cat file | grep "^root\>" | tr -d :