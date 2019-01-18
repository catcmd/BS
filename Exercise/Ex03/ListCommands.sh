#!/usr/bin/env bash

#Exercise 3.1: List commands
ls /usr/bin >> cmdlist
ls /bin >> cmdlist #move everything to file list
wc -l cmdlist

# list all system cmds and write them to file
ls /sbin >> syscmdlist
ls /usr/sbin >> syscmdlist
wc -l syscmdlist

# write both to the summary file
cat cmdlist >> allcmdlist
cat syscmdlist >> allcmdlist
wc -l allcmdlist

# sort them in alphabetical order
sort -n allcmdlist syscmdlist cmdlist

#Excercie 3.2: Work with the command lists
#(a)Creater a header which contains "All comands:!"
echo "All comands: $cat allcmdlist" > header
#(b)Create trailer file with: "A total of count "A total of count *Insert count of commands here commands*"
echo "Total Count: $(wc -l allcmdlist) commands" > trailer
#(c)Content of header, allcmdlist and trailer into one file summary
echo "All summarized into one: $(wc -l allcmdlist cmdlist syscmdlist)" > summary
cat header tailer >> summary
#(d)Print the first last 12 lines of summary onto the screen!
head -n 12 summary
tail -n 12 summary

#h)Print the lines 100-150 of summary
head -n 100 summary | tail -n 50
#(i) Show content of summary reverse oder screen by screen
tac summary | less
#(j) How many letters, words and lines does header contain?
wc -c header
wc -m header
wc -l header
#(k) Rename header into HEADER
mv header HEADER
#(l) Create testdir in home
mkdir testdir
#(m) Move summary into testdir
cp -r summary ~/testdir/
#(n) Create summary.save of summary in home
cp -r summary ~/testdir/
#(o) Is it possible to make a copy of into home
its possible as long there is none with the same name
#(p)Create a hardlink summary2 of summary what happens when removes? -> Stays as its a hardlink
ln summary summary2
#(q)Create soft (symbolic) link of summary2 and remove summary2. -> summary.s still appears but is corrupted

#3.3 Cleanup
#(a) Remove testdir with one command
rm -r dh_testdir

#(b) remove everything created with one command 
rm -r enum_of_files

#3.4 Make Backups

#3.5 Highlight
pygmentize -g -0 style=colorful, linenos=1 main.c