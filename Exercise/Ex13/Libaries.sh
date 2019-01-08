#!/usr/bin/env bash

#(c) Compile the supermath.c into a shared library with the name supermath.so.
gcc -fPIC -shared -o libsupermath.so supermath.c

#(d) Copy the header to /usr/local/local/include. Check permissions after copying.
sudo cp supermath.h /usr/local/include
ls -l supermath.h

#(e) Copy the shared libarary to /usr/lib. You may also update the shared library cashe with ldconfig. Check the premissions after copying
sudo cp libsupermath.so /usr/lib
sudo ldconfig
ls -l | grep libsupermath.so

#(f) Change into the BS_exercise ... dir
#(g) Compile the math program by linking to the supermath.
gcc -o math math.c -libsupermath

#(h) Use the math program with math 1 + 2
./math 1 + 2