#!/usr/bin/env bash

i=0

while [ $i -le 100 ]
do
    rm file$i
    i=$(expr $i + 1)
done