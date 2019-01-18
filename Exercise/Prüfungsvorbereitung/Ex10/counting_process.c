#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h> //printf, perror
#include <stdlib.h> //EXIT_FAILURE, EXIT_SUCCESS
#include <sys/sem.h> //semget, semctl, sembuf, ...
#include <pthread.h> //pthread_*

const int N = 100000; //Number of iterations per thread
const int P_OP = -1; //P operation: subtract 1
const int V_OP = 1; //V operation: adds 1
const int PERM = 0644; //Permission to the semaphore
const key_t KEY = 0x424242; //Key of the semaphore

int global_semid = 0;
int global_counter = 0;

//Semaphore
void create_semaphore() {
        //create semaphore with length 1
        global_semid = semget(KEY, 1, IPC_CREAT | IPC_EXCL | PERM);
        if(global_semid < 0) {
        perror("Error when creating the semaphore ...\n");
        exit(EXIT_FAILURE);
        }

        //init semaphore with value 1
        if(semctl(global_semid, 0, SETVAL, (int) 1) == -1) {
        perror("Error can't initialise semaphore...\n");
        exit(EXIT_FAILURE);
        }
    }

void semaphore_operation(int sid, int op) { //does a semaphore operation P/V
        struct sembuf semaphore;
        semaphore.sem_op = op; //P = -1; V = 1
        semaphore.sem_flg = 0; //no flags needed
        semaphore.sem_num = 0; //semaphore with index 0

        if(semop(sid, &semaphore, 1) == -1) {
            perror("semop failed");
            exit (EXIT_FAILURE);
        }
    }

    void P(int semid) {
        semaphore_operation(semid, P_OP);
    }

    void V(int semid) {
        semaphore_operation(semid, V_OP);
    }

int main () {
    //TODO: You may test if the semaphore already exist (use semget(...)). If not you create it.
    global_semid = semget (KEY, 0, IPC_PRIVATE);
    if (global_semid < 0) {
        create_semaphore();
    }

    //Main task: Loop 2000000 times and add 1 to the counter inside the loop
    for (int i = 0; i < 2000000; ++i) {
        //TODO: You have to place the P/V operations here...
        //      But remember, the Linux API does not provide P/V directly.
        P(global_semid);

        //Open the file
        int file = open("counter", O_RDWR);
        if (file == -1) {
            printf("Could not open file, exiting!\n");
            exit(1);
        }

        //Read the number
        const int MAX_LEN = 64;
        char number[MAX_LEN];
        read(file, &number, sizeof(number));
        
        //Convert the string into an integer
        int counter = atoi(number);
        counter++;

        //Write the new number into the counter
        sprintf(number, "%d\n", counter);
        lseek(file, 0, 0);
        write(file, &number, strlen(number) + 1);
        
        //Close the file
        close (file);

        //Unlock the semaphore
        V(global_semid);

    }

    

    printf("Finished!\n");

    return EXIT_SUCCESS;
}
