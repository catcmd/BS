#!/usr/bin/env bash

if [ $# -eq 1 ]
then
    echo "this is your shell:"
    grep "^$1:" /etc/passwd | cut -d : -f 7

else
    echo "wrong number of param!"
    echo "example: %0 dev"
    exit 1
fi
