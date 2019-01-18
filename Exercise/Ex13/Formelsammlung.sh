#!/usr/bin/env bash

####FIND####
#for file names und directories

#(a) How to find files and count the amount
find . -name "*.<extension name>" | wc -l #find all files that contain what ever you want
#(b) Count the lines within a file
find . -name "*.c" -exec cat {} \; >> count.txt; wc -l count.txt
#(c) Rename files
find . -name "*.c" -exec mv {} {}pp \;

####GREP####
#Inhalt

#(a) Only recursive
grep -r "fuck"
#(b) Case sensitive
grep -i -r "fuck" | wc -l 
#(c) E grep to grep more at once
grep -E -i -r "fuck| bloody | bastard" | wc -l 
#(d) only to show data name
egrep -i -r "fuck| bloody | bastard" | cut -d : -f 1 | sort -r -u

####Buil
gcc -o hello_world main.c #instant builds ready ELF
ggc -c main.c #builds obj. data through compiling
ggc -o hello_world main.o #buids ELF through obj. data
./hello_world
#ELF = executeable file 
strings hello_world #lists strings
ldd hello_world #lists all shared libaries on which obj. depends
nm hello_world #lists all symbols from the obj file
strip hello_world #Delete the symbol table information
readelf -a hello_world #Display information about an ELF
strip hello_world #deletes the symbol table information

###ls###
ls #lists
ls -lh #lists human readable

###apt###
apt search rar #searches for packages with the criteria (installed, upgradeable)
apt list rar #Lists package criteria (installed, upgradeable)
apt depends rar #Shows dependency of package fo rexmaple a lib
apt remove rar #Removes installed packages
apt update #updates the list of available packages
apt upgrades #installs the newest versions
apt contains #tells you whats in the package

###Processes###
ps aux #lists all running processes
pstree #graphically shows running processes
pstree -p #includes the process id into the tree
htop #tastmanager tells you total amount of tasks
#bash is parent und guarke grandparent of pstree
kill #stops programm kills it

###Thread###
# = smallest unit within a process, schelduler can scheldule it independtly from other exe. threads

