# !/usr/bin/env bash

##########################################
#Goals:
#Cale, Libs; COmmand substitution; Strings
#File search
#File manipulation
##########################################

########################
#Exercise 6.1: Sequences
########################

#a) What is the output of the command "seq 1 10"?
#Prints in sequence 1 till 10.

#b) Write a shell script which creates the file_1, file_2, ... file_100. The file file_i
#should contain the number i.
for i in $(seq 1 100)
    do
        echo $i >> file_$i
    done

#c) How can you use seq to create a list of numbers in descending order like 100, 99, ..., 1?
#Use the man-command as a source of information.
man seq
seq 100 -1 1 # seq <First> <INCREMENT> <Last>

#d) Write a shell script which copies the files file_100. file_99, ..., file_i (in this order) into
#the file_0.
for i in $(seq 100 -1 1)
    do
        cat file_$i >> file_0
    done

########################
#Exercise 6.2: Scripts with interaction
########################
#(a) Write a shell script wich renames the files files_1, file_2, ... file_100 into file1, ... file100

for i in $(seq 1 100)
    do
        mv  file_$i file$i
    done

#(b) Write a shell script which removes the files file1, file2, ... file 100. Use the while-command for this.

i=1
while [ $i -le 100 ]
    do 
        rm file$i 
        i=$(expr $i + 1)
    done
rm -r /home/dev/workspace/BS/Exercise/Ex06/Files

########################
#Exercise 6.3: Scripts with interaction
########################
#(a) Print the names of the home directory of all users.
#These are stored at the 6th column of the file /etc/passwd.
man cut
cut -d : -f 6 /etc/passwd | grep home #<6> = which delimeter

#(b) Write a shell script which gets an user name as parameter and returns the shell used by this user
#(stored in the 7th columns of /etc/passwd). Test this with some users like dev, lightdm, root and games. p12/7
#look at 6.3b.sh

########################
#Exercise 6.4: Find Files
########################
#(a) Got to your home directory
cd ~
#(b) Create a shell variable HERE which contains the name of the current directory


#(c) Diplay all regular files which are inside the directory (recursively) that were changed in the 
last five days. No error message should be shown.





