#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

void work(){
    printf("Baking some hard brownies boooooi!\n");
    sleep(20); //simulates the "heavy" work!!
    printf("done with %i\n", counter);
    //TODO: Add code for created processes here
    counter++;
}

int main(int argc, char** argv){
   int counter = 0;


    int N = 0;

    //Get the number of processes which should be created
    if(argc == 2){
        N = atoi(argv[1]);
    } else {
        printf("Usage: %s N\n", argv[0]);
        exit(1);
    }

    //TODO: Write your code here
    pid_t pid[N];
    while(counter <= N)
    {
        printf("HNNN....NGG!!");
        pid[counter] = fork(); //fork() copies itself  
        work(); 
    }

    printf("%i\n", counter);

    return EXIT_SUCCESS;
}
