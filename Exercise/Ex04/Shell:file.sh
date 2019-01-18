#!/usr/bin/env bash

#List all commands in /bin and /usr/bin

#(a) Begin with an x
ls /bin/x* /usr/bin/x*

#(b) End with a d
ls /bin/*d /usr/bin/*d

#(c) begind with a x and end with a d
ls /bin/x*d /usr/bin/x*d

#(d) Contain at least 1 digit
ls -d /bin/*[0-9]* -d /usr/bin/*[0-9]*

#(e) Contain e not at the beg or end
WORD=[!e]*e*[!e]
ls /bin/$WORD /usr/bin/$WORD

#(f) Begin with x, y, z
WORD=[x-z]
ls /bin/$WORD* /usr/bin/$WORD*

#(g)Does not begin with x, y ,z
WORD=[!x-z]
ls /bin/$WORD* /usr/bin/$WORD*

#(h) Consist of one character
WORD=?
ls /bin/$WORD /usr/bin/$WORD

##4.2File names with meta characters
#(a) List files inside home dir with .
ls ~/.*

#(b) contain . somehwhere
ls ~/?*.*

#(c) create file with name d?
touch d\?

#(d) Create file d*
touch d\*

#(e) How to only delete d*? By escaping before the star otherwise all other data will be deleted
rm d\*

#(f)Create hardling softling of d* diffrence?
#hardlink = almost cp wird nicht angezeigt
#soft link  = angezeigt und blau

#(g) whos owner with ls -l
#owner group -> dev

#(h) Why has the filder Desktop more then one link?
#




