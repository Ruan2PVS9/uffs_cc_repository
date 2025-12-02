#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>

#define NUM_THREADS 3
#define MAX_VALUE 51 // Valor de parada para a variável global

int global_var = 0;

sem_t thread_sem[NUM_THREADS]; // Semáforos para controle

pthread_mutex_t global_mutex; //= PTHREAD_MUTEX_INITIALIZER;

void *thread_function(void *arg)
{
    int thread_id = *((int *)arg);
    free(arg);

    while (1)
    {
        sem_wait(&thread_sem[thread_id]);

        pthread_mutex_lock(&global_mutex);
        if (global_var >= MAX_VALUE)
        {
            pthread_mutex_unlock(&global_mutex);
            int next_thread = (thread_id + 1) % NUM_THREADS;
            sem_post(&thread_sem[next_thread]);
            break;
        }

        global_var++;
        printf("Thread %d: global = %d\n", thread_id, global_var);

        int stop_cont = (global_var < MAX_VALUE);
        pthread_mutex_unlock(&global_mutex);

        if (!stop_cont)
        {
            int next_thread = (thread_id + 1) % NUM_THREADS;
            sem_post(&thread_sem[next_thread]);
            break;
        }

        int next_thread = (thread_id + 1) % NUM_THREADS;
        sem_post(&thread_sem[next_thread]);
    }

    printf("Thread %d finalizou\n", thread_id);
    return NULL;
}

int main()
{
    pthread_t threads[NUM_THREADS];
    int i;

    printf("=== Problema de Alternância de Threads com Semáforos ===\n");
    printf("Criando %d threads que irão incrementar uma variável global\n", NUM_THREADS);
    printf("Valor máximo: %d\n\n", MAX_VALUE);

    for (i = 0; i < NUM_THREADS; i++)
    {
        if (sem_init(&thread_sem[i], 0, 0) != 0)
        {
            perror("Erro ao inicializar semáforo");
            exit(1);
        }
    }

    for (i = 0; i < NUM_THREADS; i++)
    {
        int *thread_id = malloc(sizeof(int));
        *thread_id = i;

        if (pthread_create(&threads[i], NULL, thread_function, thread_id) != 0)
        {
            perror("Erro ao criar thread");
            exit(1);
        }
    }

    sem_post(&thread_sem[0]);

    for (i = 0; i < NUM_THREADS; i++)
    {
        pthread_join(threads[i], NULL);
    }

    for (i = 0; i < NUM_THREADS; i++)
    {
        sem_destroy(&thread_sem[i]);
    }

    pthread_mutex_destroy(&global_mutex);

    printf("\n=== Execução finalizada ===\n");
    printf("Valor final da variável global: %d\n", global_var);

    return 0;
}
