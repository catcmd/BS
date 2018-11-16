#!/usr/bin/env bash

#/home/dev/workspace/linux-4.19-rc3

#(a) Searches for file typed files, while executing a .sh and sorting for unique "singles" of them 
find . -type f -exec /home/dev/workspace/BS/Exercise/Ex06/getext.sh -f {} \; | sort -u 

#(c) 
find . -name *.c | wc -l #7p13 finds all files that contain *.c

#(d)
find . -name *.cpp -exec cat {} \; > count.txt; wc -l count.txt

#(e)
find . -name *.c -exec mv {} {}pp \; 


