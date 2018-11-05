#!/usr/bin/env bash

#(a) OS5 p.20 & p.11
# [ $# -eq 1 ] selbe wie test p.14
if test $# -eq 1 && test ~ = $1 
    then
        echo "Yes, this is your home directory."
    else
        echo "No, this  isn't your home directory!"
        exit 1 #p.7 exit command #to ask for the code echo$?
fi



