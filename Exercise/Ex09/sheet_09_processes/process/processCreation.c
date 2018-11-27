#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

int counter = 0;

void work() {
    printf("Baking some hard brownies boooooi!\n");
    sleep(20); //simulates the "heavy" work!!

    //TODO: Add code for created processes here
    counter++;
    exit(0); //returncode 0 = succeeded to check use echo $? <program name>
    //and to view the result pstree -p
}

int main(int argc, char** argv){

    int N = 0;

    //Get the number of processes which should be created
    if(argc == 2){
        N = atoi(argv[1]);
    } else {
        printf("Usage: %s N\n", argv[0]);
        exit(1); //return code 1 = failed
    }

    //TODO: Write your code here
    pid_t pid[N];
    /*while(counter <= N)
    {
        printf("HNNN....NGG!!");
        pid[counter] = fork(); //fork() splits process into 2 thats why 2^n
        work(); 
    }*/

    for(int i = 0; i < N; i++){
        pid[i] = fork();

        switch(pid[i]){ //error case programatic OS 11 p. 16
            case -1: //error
                 printf("Error: fork failed\n");
            case 0: //child
                printf("Hi, I am the fork with the PID %d!\n", getpid());
                work();
                break;
           default: //parent
                break;            
        }
    }

    for(int i = 0; i < N; i++){
        printf("Parent waits until it's childprozess with the PID %d terminates.\n", pid[i]);
        waitpid(pid[i], NULL, 0);
        printf("Child process with PID %d exited.\n", pid[i]);
    }

    printf("counter %i\n", counter);

    return EXIT_SUCCESS;
}
