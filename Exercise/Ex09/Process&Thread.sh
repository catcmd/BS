#!/usr/bin/env bash

#9.1: Process management
#(a) List all running processes.
ps aux
top
#(b) What information do you find for each process?
#(c) What information do you find for each process?
#USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
#root         1  0.0  0.3 159944  9324 ?        Ss   13:04   0:03 /lib/systemd/systemd --system --deserialize 55
#root         2  0.0  0.0      0     0 ?        S    13:04   0:00 [kthreadd]

#(d) How many processes are running? Write everything in one line.
ps aux | wc -l
#(e) Which processes are created fist?
#Check out the PID Little endian

#(f) Why are there gaps between the PIDs (Process IDs)?
#Many processes are short lived. They get a PID, run, finish, and the PID disappears from the process table.
#Processes sometimes only live for a fraction of a second!

#(g) What is the lowest PID and what is the meaning of this process?
#(h) What is the meaning of the '-p' flag of pstree?
#(i) What are the parent and grand process of pstree?
systemd─┬─ModemManager───2*[{ModemManager}]
        │         ├─lightdm─┬─mate-session─┬─applet.py───{applet.py}
        │         │         │              ├─guake─┬─bash───pstree
        





