#!/usr/bin/env bash

#(a) Go to your home directory.
cd ~
#(b) Create a shell variable HERE which contains the name of the current directory
HERE = $HOME #$HOME oder ~
#(c) Display all regular files which are inside the directory (recusivley) that were 
#changed in the last five days. No error messages should be shown.
find $HERE -type f -ctime -5

