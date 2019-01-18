#!/usr/bin/env bash

if [ -r 5.5.sh ]; then
    cat 5.5.sh
else
    echo "File not readable!"
fi
