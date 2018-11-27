#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

int counter = 0;

void* work() {
    sleep(20); //simulates the "heavy" work!!
    //TODO: Add code for created threads here
    counter++;    //function increases counter after having been created as thread and run through

    return NULL;
}

int main(int argc, char** argv){
    int N = 0;

    if(argc == 2){
        N = atoi(argv[1]);
    } else {
        printf("Usage: %s N \n", argv[0]);
        exit(1);
    }

    //TODO: Add code for the main thread here p.23 OS 11
    pthread_t pth[N]; //creates threads struct
    for(int i = 0; i < N; i++){

        printf("Just creating threads...\n");
        pthread_create(&pth[i], NULL, &work, NULL); //main thread creates work() as thread
    }

    /*Join thread (wait until the thread has finished)*/
    int thread_exit_state;

    for(int i = 0; i < N; i++){ //supposed to join all threads N times

        thread_exit_state = pthread_join(pth[i], NULL);

        if(thread_exit_state != 0){
            fprintf(stderr, "Failed creating ze thread\n");
            exit(EXIT_FAILURE);
        }

        printf("Child thread with TID %lu exited. \n", pth[i]);
    }

    printf("%i\n", counter);

    return EXIT_SUCCESS;
}
