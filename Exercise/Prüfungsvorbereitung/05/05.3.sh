#!/usr/bin/env bash

for i in $(seq 1 1 9)
do
    echo "$i" > "File_$i"    
done

#cat File_* >> File_0

for i in $(seq 1 1 9)
do
    cat File_$i >> File_0
done

