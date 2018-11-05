#!/usr/bin/env bash

#(a) OS5 p.20 & p.11
# [ $# -eq 1 ] selbe wie test p.14
if test $# -eq 1 
    then
        echo "Exactly 1 param has been inserted."
    else
        echo "ERROR: Insufficient param num has been inserted."
        exit 1 #p.7 exit command #to ask for the code echo$?
fi

