#define _GNU_SOURCE
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>
#include <semaphore.h>
#include <fcntl.h>
#define N 5
#define LEFT (i + N - 1) % N
#define RIGHT (i + 1) % N
#define THINKING 0
#define HUNGRY 1
#define EATING 2
typedef int semaphore;
int state[N];
semaphore mutex = 1;
semaphore s[N];
sem_t filosofo_sem[N]; // semaforo para cada filosofo

pthread_mutex_t count_mutex; //= PTHREAD_MUTEX_INITIALIZER;

pthread_mutexattr_t mta;

void think(int i);
void eat(int i);
void down(semaphore *s);
void up(semaphore *s);
void take_fork(int i);
void put_fork(int i);
void test(int i);

void philosopher(int i)
{
    while (1)
    {
        think(i);               // o filosofo esta pensando
        take_fork(i);           // pega o garfo a sua esquerda
        take_fork((i + 1) % N); // pega o garfo a sua direita
        eat(i);                 // o filosofo esta comendo
        put_fork(i);            // larga o garfo a sua esquerda
        put_fork((i + 1) % N);  // larga o garfo a sua direita
    }
}

void *filosofo(void *arg)
{

    int i = *((int *)arg);
    free((int *)arg);

    printf("Filosofo %d \n", i);
    if (state[i] == THINKING)
        think(i);

    return NULL; // ou pthread_exit(NULL);
}

void take_fork(int i)
{
    down(&mutex);      // entra na regiao critica
    state[i] = HUNGRY; // o filosofo esta com fome
    test(i);           // tenta pegar os garfos
    up(&mutex);        // sai da regiao critica
    down(&s[i]);       // bloqueia se os garfos nao estiverem disponiveis
}

void put_fork(int i)
{
    down(&mutex);        // entra na regiao critica
    state[i] = THINKING; // o filosofo esta pensando
    test(LEFT);          // ve se o vizinho da esquerda pode comer
    test(RIGHT);         // ve se o vizinho da direita pode comer
    up(&mutex);          // sai da regiao critica
}
void test(int i)
{
    if (state[i] == HUNGRY && state[LEFT] != EATING && state[RIGHT] != EATING)
    {
        state[i] = EATING; // o filosofo come
        up(&s[i]);         // libera o semaforo do filosofo i (garfos estao disponiveis)
    }
}

void think(int i)
{
    // filosofo pensando
    printf("Filosofo %d esta pensando\n", i);
    sleep(random() % 5);
}

void eat(int i)
{
    // filosofo comendo
    printf("Filosofo %d esta comendo\n", i);
    sleep(random() % 5);
}
void down(semaphore *s)
{
    while (*s <= 0)
        ; // espera ocupada
    (*s)--;
}
void up(semaphore *s)
{
    (*s)++;
}

int init(void)
{
    pthread_t tids[N];
    int i = 0;

    // Exemplo de como inicializar um mutex recursivo
    pthread_mutexattr_init(&mta);
    pthread_mutexattr_settype(&mta, PTHREAD_MUTEX_RECURSIVE);
    pthread_mutex_init(&count_mutex, &mta);

    for (i = 0; i < N; i++)
    {
        int *j = malloc(sizeof(int));
        *j = i;
        pthread_create(&tids[i], NULL, filosofo, (void *)j);
    }
    /* We will now wait for each thread to<\n>
     * terminate */
    for (i = 0; i < N; i++)
    {
        pthread_join(tids[i], NULL);
        printf("Thread id %ld returned\n", tids[i]);
    }
    return (1);
}

int main(void)
{
    init();
    return (1);
}
