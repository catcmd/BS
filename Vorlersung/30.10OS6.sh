#OS6
#!/usr/bin/env bash

var="Test"

# '#' (Gartenzaun) vor var = len of var
echo "len: ${#var}"

#Ctrl + r = reverse search

#for((i=10; i>0; i--))
#do

#Wie kriege ich den file name ohen extension?
file="file.utoqt.txt"
echo ${file%*}
echo ${file%.*}

unset var 
echo "$var"

#Gibt den namen bis T aus
var='Linus Torvalds'
echo ${var:0:7}

# '##' be greedy match from start til the last point if its one '#' 
echo ${file##*.}

#cuts everythig off till '.' and returns everything beyond '.'' on the righ
#'%%' would cut everything away on the right till for e.g. the next '.'
echo ${file%.*}

#first
file="file.category.txt.txt"
echo "replace first match: ${file/.txt/.pdf}"

#var="Linux is fun!"
echo "replace all matches §{var//u/4}"

#at beggining
file="txt.readme.txt"
echo "replace only at the beginning: ${file/#txt/text}"

#at the end
file="filetxt.readme.txt"
echo "replace only at the end: ${file/%txt/md}"

#um bestimmte positionen im String zu atakieren 'awk --help' 
# im hintergrund laufen lassen '<cmd> &'
#show aktiv befehl Crtl + Z wird angehalten und in hintergrund schieben mit 'bg <%1(<-Job ID)>'
#'jobs' = cmd jobs, gibt aus was im hintergrund läuft
#'bg' wird als letzter job in hg verschoben
#Abbrechen wieder mit 'Ctrl + C'
#Kill process mit ''
#When terminal gets shutdown child processes will be closed as well of it's shell
#zb 'xed', then 'Crtl+Z', 'exit' on window