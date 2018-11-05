#!/usr/bin/env bash

#first a counter to count the parameters 

#Number of parameters, starting from one OS5 p.18

echo $# #Number of param. starting from 1

#echo $0 #Name of the script
#echo $1 #echos the first parameter written into shell script
#echo $2 #echos the second parameter
#echo ${10} #from the ninth on breakets are needed
#echo $* #expands the seperated parameters and  echoes them as one string, starting from 1
#echo $@ #expands parameters in seperates strings starting from one

#echo $? #Exit status of the last command/process
#echo $$ #Process if of shell

#OS5 p16
for i in "$@"
do
    echo "$i"
done

for i in "$*"
do
    echo "##########"
    echo -n "$i"
    echo -e "$i"
    echo "$i"
done






