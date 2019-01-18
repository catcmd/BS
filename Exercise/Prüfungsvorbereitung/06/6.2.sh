#!/usr/bin/env bash

for i in $(seq 1 1 100)
do
    mv file_$i file$i
done
