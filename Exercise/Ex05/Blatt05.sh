!/usr/bin/env bash

##Exercise 5.1: Variables

#(a) Display the content of all environment variables of your shell.
#OS5 p.8
printenv #Shows all variables

#(b) Create a new variable VAR with thecontent example! Now repeat exercise 5.1 (a)
VAR="example"
printenv

#(c) Display the content of the variable VAR without displaying other variables
echo "VAR: $VAR"

#(d) Displays content of PATH without other variables. OS p.9
echo "PATH: $PATH"

#(e) Add your current directory to the PATH variable
#PATH is where shell looks for executable
#PATH="$PATH:$(pwd)" #$(pwd) = commando ausführen und zugreifen
PATH=$PATH:. #Hardlink . so heißt das directory
echo "PATH: $PATH"

##5.2
#(a) Shell script that prints the count of it's parameters and each parameter in a seprate line
#5.2a.sh

#(b) Connect  2 parameters through quat marks "p1 p2" p3
#They'll be seen as one String

#(c) Shell that prints the complete call of into one line
#5.2c.sh
