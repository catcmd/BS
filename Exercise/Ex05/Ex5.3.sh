#!/usr/bin/env bash

#5.3
#(a) Write a shell script that creates the files file_1, file_2, ... file_9. The content of file_i
#should be the number i.


for i in {1..9}
do
    touch file_$i

    echo i>>file_$i
done

cat file_* > file_0

cat file_0

touch file1_0






