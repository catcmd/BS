#!/usr/bin/env bas

#[dev@bs-dev Ex10]$ make
#make: *** No targets specified and no makefile found.  Stop.
#[dev@bs-dev Ex10]$ make counting_process.c
#make: *** No rule to make target 'counting_process.c'.  Stop.
#[dev@bs-dev Ex10]$ cd counting/
#[dev@bs-dev counting]$ make
#gcc -o counting_process counting_process.c
#[dev@bs-dev counting]$ ./counting_process &
#[1] 6473
#[dev@bs-dev counting]$ ./counting_process &
#[2] 6475
#[dev@bs-dev counting]$ Finished!
#Finished!
#cat counter
#3301685
#[1]-  Done                    ./counting_process
#[2]+  Done                    ./counting_process