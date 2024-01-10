#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Aluno: Ruan Pablo Vitkoski de Souza

// Questões para serem entregues.

// 1- Rode o código e verifique se está funcionando corretamente a partir do debug.
//      R: esta funcionando a ordenação porem não esta contado as comparações feitas.
// 2- Crie uma variável para indicar quantas operações de comparação foram executadas pelo algoritmo de bubble e pelo Insertion. Para a mesma entrada de 10000 elementos quantas comparações foram realizadas?
//      R: em ambos os casos eles fazem o mesmo quantidade de comparações para quando em ambos estão com o vetor totalmente desordenado, mas em um caso de vetor randômico igual o método insertion faz menos comparações.
// 3- Quais são as diferenças entre os métodos bubble e insertion sort?
//      R: o método bubble ira percorre o vetor ate encontrar o posição no caso do maio elemento assim ordenando mas fazendo mais comparações enquanto o insertion ira percorrer o vetor procurando o lugar coreto do valor assim facilitando a ordenação durante o processo.
// 4- Existe algum caso em que o bubble é melhor que o sort em número de comparações?
//      R: não.
// 5 - Compute o tempo para fazer o ordenamento de um mesmo vetor randômico com 100000 valores usando o bubble e o insertion.
//      R: end time insertion : 14.269137 end time bubble : 22.888763  assim percebendo que oo insertion leva quase metade do tempo que o bubble leva

void swap(int *a, int *b)
{
    int temp = *(b);
    *b = *a;
    *a = temp;
};

void bubble(int n, int *ptr, long long int *contador, long long int *trocas)
{
    // int contador = 0;
    for (int i = 0; i < n; i++)
    {
        // for (int j = i + 1; j < n; j++)
        // {
        //     (*contador)++;
        //     // *contador = *contador + 1;
        //     if (*(ptr + j) < *(ptr + i))
        //     {
        //         swap((ptr + j), (ptr + i));
        //     }
        // }
        for (int j = i + 1; j < n; j++)
        {
            (*contador)++;
            // *contador = *contador + 1;
            if (*(ptr + j) < *(ptr + i))
            {
                swap((ptr + j), (ptr + i));
                (*trocas)++;
            }
            // else
            //     break;
        }
    }
    printf("sort vector bubble: \n");
    for (int i = 0; i < n; i++)
    {
        printf("%d ", ptr[i]);
    }
    printf("\ncontador %lld\n", *contador);
    printf("\n");
}

void insertion(int n, int *ptr, long long int *contador, long long int *trocas)
{

    int min;
    // int contador = 0;
    for (int i = 1; i < n; i++)
    {
        min = ptr[i];
        int j;
        // for (j = i; j >= 1 && min < ptr[j - 1]; j--)
        // {
        //     ptr[j] = ptr[j - 1];
        // }
        // ptr[j] = mim;

        for (j = i; j >= 1; j--)
        {
            // *contador = *contador + 1;
            (*contador)++;
            if (min < ptr[j - 1])
            {
                ptr[j] = ptr[j - 1];
                (*trocas)++;
            }
            else
                break;
        }
        ptr[j] = min;

        // for (j = i; j >= 1; j--)
        // {
        //     // *contador = *contador + 1;
        //     (*contador)++;
        //     if (min < ptr[j - 1])
        //     {
        //         int temp = ptr[j];
        //         ptr[j] = ptr[j - 1];
        //         ptr[j - 1] = temp;
        //     }
        // }
    }
    printf("sort vector insertion: \n");
    for (int i = 0; i < n; i++)
    {
        printf("%d ", ptr[i]);
    }
    printf("\ncontador %lld\n", *contador);
}

int main()
{
    // vector size
    // long int n = 5;
    // long int n = 100;

    // long int n = 1000;
    // long int n = 10000;
    long int n = 100000;
    // memory allocation    // long long int unsigned

    long long int *contador_ins = (long long int *)malloc(sizeof(long long int));
    long long int *trocas_ins = (long long int *)malloc(sizeof(long long int));
    long long int *contador_bb = (long long int *)malloc(sizeof(long long int));
    long long int *trocas_bb = (long long int *)malloc(sizeof(long long int));
    *contador_ins = 0;
    *trocas_ins = 0;
    *contador_bb = 0;
    *trocas_bb = 0;

    int *vet_ins = (int *)malloc(n * sizeof(int));
    int *vet_bb = (int *)malloc(n * sizeof(int));
    srand(time(NULL));

    for (int i = 0; i < n; i++)
    {
        int x = (rand() % 100);
        vet_ins[i] = x;
        vet_bb[i] = x;
    }
    // int j = n;
    // for (int i = 0; i < n; i++)
    // {
    //     vet_ins[i] = j;
    //     vet_bb[i] = j;
    //     j--;
    // }
    clock_t beginIns = clock();
    insertion(n, vet_ins, contador_ins, trocas_ins);
    clock_t endIns = clock();
    double time_spent_ins = (double)(endIns - beginIns) / CLOCKS_PER_SEC;
    clock_t beginbb = clock();
    bubble(n, vet_bb, contador_bb, trocas_bb);
    clock_t endbb = clock();
    double time_spent_bb = (double)(endbb - beginbb) / CLOCKS_PER_SEC;
    printf("\n end time insertion : %f | comparações : %lld | trocas : %lld", time_spent_ins, *contador_ins, *trocas_ins);
    printf("\n end time bubble : %f | comparações : %lld | trocas : %lld", time_spent_bb, *contador_bb, *trocas_bb);
    return 0;
}
