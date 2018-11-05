#!/usr/bin/env bash
###############################################################
###Exercise sheet 4 - Shell: file names and access rights
###############################################################
###List all the commands in /bin and /usr/bin that:
###############################################################

#a) Being with an x
ls /bin/x* /usr/bin/x*

#b) End with a 'd'
ls /bin/*d /usr/bin/*d

#c) Begin with an 'x' and ends with a 'd'
ls /bin/x*d /usr/bin/x*d

#d) Contain at least one digit
ls -d /bin/*[0-9]* /usr/bin/*[0-9]* #-d only the folder will be displayed not its content

#e) Contains an e that is neither at the beginning nor at the end
WORD=[!e]*e*[!e]
ls -d /bin/$WORD /usr/bin/$WORD

#f) Begins with an y or z
ls -d /bin/[yz]* /usr/bin/[yz]*

#g) Does not begin with x,y or z
WORD='[!xyz]*'
ls -d /bin/$WORD /usr/bin/$WORD
echo "$WORD"

#h) Consist of one character
ls -d /bin/? /usr/bin/?

#i) Consist of two characters
ls -d /bin/?? /usr/bin/?? #-ald

#j) Conist of 2 or 3 characters. What is diffrent if you use the -d option?
#no access rights are shown and list is not from top to bottom
ls -d /bin/?? /usr/bin/?? /bin/??? /usr/bin/???

######################################
##4.2: File names with meta characters
######################################

#a) List all files inside the home directory that begin with .
ls -d ~/.*

#b) Are there files or directories inside the home directory, 
# which contain at least one '.' that is not at the beginning?
ls -d ~/?*.*

#c) Create a file with the name d?
touch /home/dev/workspace/Exercise/d\?

#d) Create a file with the name d\*+
touch /home/dev/workspace/Exercise/d\*

#e) Remove the file d? and ensure that only this file has been removed!
rm /home/dev/workspace/Exercise/d\?

#f) Create a hardlink and a softlink of the file "d*"! 
#What are the diffrences if you look at them when using "ls -l"?
ln -s "d*" "dsoftlink"
ln "d*" "dhardlink"

#g) What directory is shown by "ls -l ~"? Who is the owner of this files in this directory?
home/dev #aka cd ~ then pwd
#rm "d*"

#h) Why has the folder Desktop more than one link
  # Answ.: Link count Verzeichnis = 2 (normalerweise)
  # Answ.: name und "." = zeigt auf sich selbst
  # Answ.: einen weiteren ".." in jedem unter ordner
  # Answ.: 2 + n (n= Anzahl Unterverzeichnisse)


###################################
##Exercise 4.3: Basic access rights
###################################

#a) Create the file file_r (itshould have some text inside) and let it only be readable by the owner
touch /home/dev/worskapce/Exercise/file_r
#nano to write instead of vi

#b) Are there files or directories inside the home directory, which contain at least on '.' that is not at the beginning
premission denied

#c) Create a file with the name 'd?'
permission denied

#d Create the directory sub and move file_r into it!
# Change the access rights of sub so you can't remove file_r
mkdir sub
mv file_r sub

#makes file unaccessable
chmod 000 sub

#e)Remove the directory datacontainer
#give accessrights back
chmod 770 sub
rm -r sub

######################################
##Exercise 4.4: Special access rights
######################################

#a)Create a directory 'datacontainer'
mkdir datacontainer

#b)Create a new group with 'sudo addgroup data'
sudo addgroup data #data is new group name

#c)Create directory 'config' in 'datacontainer'
mkdir datacontainer/config

#d)#2.d)datacontainer/config2/cfg1 and datacontainer/config/cfg2
touch datacontainer/config2/cfg1 datacontainer/config2/cfg2

#e)Which group and rights does the newly created directories and files have?
#dev dev where as the second dev stands for the group

#######
#4.4.2#
#######

#2.a)Change the group to data on datacontainer
#owenerrights with chwon
sudo chgrp chown

#2.b)Set the setgid right on datacontainer
#touch /home/dev/worskapce/Exercise/file_r
sudo chmod g+s datacontainer/

#2.c)Create a directory named config2
mkdir datacontainer/config2

#2.d)datacontainer/config2/cfg1 and datacontainer/config/cfg2
touch datacontainer/config2/cfg1 datacontainer/config2/cfg2
cd datacontainer/
cd ..
ll datacontainer/
#2.e)Which group and rights does the newly created directories and giles have?
#total 16
#drwxrwsr-x 4 dev data 4096 Oct 29 16:47 ./
#drwxrwxr-x 3 dev dev  4096 Oct 29 16:37 ../
#drwxrwxr-x 2 dev dev  4096 Oct 29 16:40 config/
#drwxrwsr-x 2 dev data 4096 Oct 29 16:50 config2/

#2.f)Remove the directory datacontainer
rm -r datacontainer




