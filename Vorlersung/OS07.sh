#!/usr/bin/env bash

cd /home/dev/workspace/BS/Vorlersung

echo "mep mep mep" >> testOS7
echo "xyz pep kek s qt benedish" >> testOS7

ls

grep "m." testOS7

rm testOS7

######################
cd /etc
egrep -r -n "PS1 *=" . 2> /dev/null
######################
find .
find /
find . -name "*.sh" -exec cat {} \;
#######################
#Hardlink auf Verzeichnis
ls -al
mkdir kerneloops-sub
tree
ln file sub/file.link
man find  #cmd zusatz suchen man find oder find --help
find . -samefile file
#find / -cdev -samefile file & #sucht auf der selben parition dauert lang