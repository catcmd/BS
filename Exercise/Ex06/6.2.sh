#!/usr/bin/env bash

########################
#Exercise 6.2: Scripts with interaction
########################
#(a) Write a shell script wich renames the files files_1, file_2, ... file_100 into file1, ... file100

for i in $(seq 1 100)
    do
        mv  file_$i file$i
    done

#(b) Write a shell script which removes the files file1, file2, ... file 100. Use the while-command for this.

i=0
while [ $i -lt 100 ]
    do 
        rm file$i 
        $i=$(expr $i + 1)
    done
rm -r /home/dev/workspace/BS/Exercise/Ex06/Files