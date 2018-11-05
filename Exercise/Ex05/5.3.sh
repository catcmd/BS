#!/usr/bin/env bash

#a OS6 p 10

#touch $(seq -s "file_ " 9) #not a valid solution to the problem

for i in $(seq 1 9)
do
    echo "$i" > "file_$i" #> overwrites >> adds onto the tail
done

#b copy content of all created files into file_0
cat file_[1-9] > file_0 #also possible with file_* and file_? :digit: but 0 is included! so wrong!

#(c) copy by loop for

for i in $(seq 1 9)
do
    cat "file_$i" >> "file_00"
done

#rm file_[0-9] #teardown







