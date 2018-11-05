#!/usr/bin/env bash

#(a)
#read and writeable OS5 p.13
test -r 5.5.sh && cat 5.5.sh #verknüpfe test mit cat des files

#if shell scripts read flag "r" is not set in cannot be execute

#(b)
#eine andere form dest Test O"5 p.14
if [ -r 5.5.sh ]; then cat 5.5.sh 
    echo "The files read flag is set readable \"r\" " #-e to enable bask \espace the \"\" gotta escape so it wont end the echo
fi
