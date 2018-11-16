#!/usr/bin/env bash

#7.1 Run C file
#(1) build
gcc -o 1_hello_world main.c
#(2) execute
./hello_world

#7.2 Explore ELF file
#(1) Find all strings that are contained in the ELF.
readelf -a hello_world > tmp.txt; code tmp.txt
strings hello_world
#(2) Which section has the ELF
#ELF Header:
#Section Headers:
#Key to Flags:
#Key to Flags:
#Program Headers:
#Section to Segment mapping:
#Dynamic section at offset 0xdc8 contains 27 entries:
#(3) Which symbols has the ELF?
nm hello_world
#(4) Size of Program 8296 bits
ls -l
#(5) Strip the symbols of the program
strip hello_world
#(6) Try to list the list the symbols again.
nm hello_world
#(7) Determine the size of the program again? Has something changed? 6120

#Exercise 7.3: Build with a Makefile p.15 OS8
#(b) build with make 
make
#(c) Run Program
./hello_world
#(d) Clean Object
make clean
#(e) Can you easily install the progam into the system?
sudo make install #doesn't work

#Exercise 7.4: Build with Autotools p.21 OS8
#(b) build
autoreconf -i
#(c) Configure the build
./config
#(d) explore configure.ac
#(e) explore makefile.am
#(f) build the program
#(g) install the program
sudo make install #instalier wenn ohne ./ ausführbar also nur dem namen des Progs simple_prog
#(h) Run se program
simple_prog
#(i)Write -DUSE_SPECIAL_ADD define into make files it's a compiler flag p.18 OS8
#(j)Create a manpage (you may do a test view directly on the created file)
man_MANS = simple_prog #create the program file simple_prog.1 and write some shit in it p.19 OS8
#(l)Build install and run again
autoreconfig -i
sudo make install #sudo make uninstall 
simple_prog
#(m)Can you use the man simple_prog?
man simple_prog
