#!/usr/bin/env bash

#(a) Update the BS_exercise repository with git pull
cd BS_exercises
git pull
cd ~

#(b) Start the process ID (PID) of the running demo_program
ps aux | grep demo_program
32145

#(c) How many CPU/RAM percentage does the program use?
0.0

#(d) Try to stop the demo Program
CTRL + C or kill <PID>

