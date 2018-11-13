#!usr/bin/env bash

cmdLink = https://www.tecmint.com/35-practical-examples-of-linux-find-command/

##############
#Find the parameters p.9
##############

#files flags read/write/execute?
find . -readable
find . -writeable
find . -executable

find. -type f -perms /u=r+w+x

### time stamps
-amin  #network-adminattime
-atime 
-cmin
-ctime
-mmin
-mtime 2 #finds files that are exactly changed 2 times before

#Example
find -mtime -2


###file size
find . -size 50k
find . -size -50k
find . -size +50k

#Example
find . -size 50k 2> /dev/workspace

### user/group
find . -user dev #find files where the user dev is the woner
find - -group #
find /home/dev/workspace/BS -user dev



###expressions: and, or not?
find . -reabale -name "file_*"
find . -readable -and -name "file_*"
find - -readable -a -name "file_*"

find . -readable -or -name "file_*"
find . -readbale -o -name "file_*"

find . ! -readable