#!/usr/bin/env bash

#for array[i] 
if [ $# -eq 1 ]
    then
        grep "^$1" /etc/passwd | cut -d : -f 7
    else
        echo "Zis is weird shit mate! Use 1 Argument!"
        exit 1
fi
