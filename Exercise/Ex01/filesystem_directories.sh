#!/usr/bin/env bash

##Exercise 2.1: explore /home/dev
#(a)What is the current directory?
pwd #prints working directory

#(b)Which files and directories contains this home directory?
ls 
#or
ls /home/dev/

#(c)How can you dertermine if it's a file or a directory?
ls -l #shows more info if its d it means directory

#(d) Which files are in ~/Desktop?
ls ~/home/Desktop 
#Desktop application links

#(e) Is there a diffrence to when you look at the desktop?
#yes with ls -a ~/Desktop/ you can see hidden files here -iamhidden
ls -a ~/Desktop/

##Exercise 2.2: explore BS_exercies/sheet_02_fs_directories
#(c) List the content recursively with ls.
ls -R BS_exercise/sheet_02_fs_directories

#Exercise 2.3: Explore directory manipulation commands
#(a) Create project directory
mkdir project

#(b)Create project/.config
mkdir project/.config

#(c) Create project/doc.project/src, project/src/package1, and project/src/package2
mkdir project/doc project/src project/src/package1 project/src/package2

#(d) List the whole content with ls (recursive)
ls -R BS_exercise/sheet_02_

#(e) List the contents of project 
ls -a /project/ #to show hidden content

#(f) Change to project/src/package1 and check if you are in the right place.
cd ../Ex02/project/src/package1/ & pwd

#(g) Change back to the last folder with one command and do not specify path
cd -

#(h) Change to project/src/package2
cd Ex02/project/src/package2

#(i) Change to project/src
cd ../../

#(j) Change to project
cd ../

#(k) Remove the created project with their subdirectories with the usage of rmdir
rmdir project/src/package1

#(l) Change to your home directory without /home/dev
cd ~
cd 
cd $HOME

#Exercuse 2.4: Explore / filesystem
#(a) Change to /
cd /

#(b) List all files and folders
ls -a -l 

#(c) Which files and folders exists
#a lot

#(d) What is the meaning of these files and folders?

 #benedicts github