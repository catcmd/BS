#!/usr/bin/env bash


for i in $(seq 1 1 100) 
do
    echo $i >> file_$i
done 

for i in $(seq 100 -1 1)
do
    echo $i >> file_$i
done

for i in $(seq 100 -1 1)
do
    cat file_$i >> file_0
done

