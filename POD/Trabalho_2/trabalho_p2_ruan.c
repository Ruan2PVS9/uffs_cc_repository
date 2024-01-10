

/**
 * @file trabalho_p1_ruan.c
 * @author Ruan Pablo Vitkoski de Souza
 * @version 0.1
 * @date 2023-09-21
 *
 * @copyright Copyright (c) 2023
 *
 *
 * Atenção: Antes de entregar, conferir se dos dados acima da documentação estão
 * preenchidos corretamente.
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void copia(int *A, int *v, int size);
void bubbleSort(int n, int *vet, long int *comp, long int *trocas);
void selectionSort(int n, int *vet, long int *comp, long int *trocas);
void insertionSort(int n, int *vet, long int *comp, long int *trocas);
void quickSort(int left, int right, int *vet, long int *comp, long int *trocas);
void criaHeap(int *vet, int n, int k, long int *comp, long int *trocas);
void heapSort(int *vet, int n, long int *comp, long int *trocas);
void countingSort(int *vet, int n, int index, long int *comp, long int *trocas);
void redixSort(int *vet, int n, long int *comp, long int *trocas);

void swap(int *a, int *b)
{
    int temp = *(b);
    *b = *a;
    *a = temp;
};

void print_vet(int *vet, int tamanho)
{
    for (int i = 0; i < tamanho; i++)
    {
        printf("%d ", vet[i]);
    }
}

void bubbleSort(int n, int *vet, long int *comp, long int *trocas)
{
    for (int i = 0; i < n; i++)
    {
        for (int j = i + 1; j < n; j++)
        {
            (*comp)++;
            if (*(vet + j) < *(vet + i))
            {
                swap((vet + j), (vet + i));
                (*trocas)++;
            }
        }
    }
    printf("\nsort vector bubble: \n");
    print_vet(vet, n);
    printf("\ncomparacoes %ld", *comp);
    printf("\ntrocas %ld", *trocas);
    printf("\n");
}

void insertionSort(int n, int *vet, long int *comp, long int *trocas)
{
    int min;
    for (int i = 1; i < n; i++)
    {
        min = vet[i];
        int j;
        for (j = i; j >= 1; j--)
        {
            (*comp)++;
            if (min < vet[j - 1])
            {
                vet[j] = vet[j - 1];
                (*trocas)++;
            }
            else
                break;
        }
        vet[j] = min;
    }
    printf("\nsort vector insertion: \n");
    print_vet(vet, n);
    printf("\ncomparacoes %ld", *comp);
    printf("\ntrocas %ld", *trocas);
    printf("\n");
}

void selectionSort(int n, int *vet, long int *comp, long int *trocas)
{
    for (int i = 0; i < n - 1; i++)
    {
        int min_index = i;
        for (int j = i + 1; j < n; j++)
        {
            (*comp)++;
            if (vet[j] < vet[min_index])
            {
                min_index = j;
            }
        }
        if (min_index != i)
        {
            int temp = vet[i];
            vet[i] = vet[min_index];
            vet[min_index] = temp;
            (*trocas)++;
        }
    }
    printf("\nsort vector selection:\n");
    print_vet(vet, n);
    printf("\ncomparacoes %ld", *comp);
    printf("\ntrocas %ld", *trocas);
    printf("\n");
}

int particionar(int *vet, int left, int right, long int *comp, long int *trocas)
{
    int range = (right - (left + 1));
    if (range == 0)
        range = 1;
    int rand_pivot_index = (int)(rand() % range) + left;
    int temp;
    temp = vet[left];
    vet[left] = vet[rand_pivot_index];
    vet[rand_pivot_index] = temp;

    int pivot = vet[left];
    int i = left;

    for (int j = left + 1; j <= right; j++)
    {
        (*comp)++;
        if (vet[j] <= pivot)
        {
            i += 1;
            (*trocas)++;
            temp = vet[i];
            vet[i] = vet[j];
            vet[j] = temp;
        }
    }

    temp = vet[left];
    vet[left] = vet[i];
    vet[i] = temp;
    (*trocas)++;

    return i;
}

void quickSort(int left, int right, int *vet, long int *comp, long int *trocas)
{
    if (left < right)
    {
        int index_pivo = particionar(vet, left, right, comp, trocas);
        quickSort(left, index_pivo - 1, vet, comp, trocas);
        quickSort(index_pivo + 1, right, vet, comp, trocas);
    }
}

void swap_heap(int *vector_a, int *vector_b)
{
    int temp = *(vector_a);
    *vector_a = *vector_b;
    *vector_b = temp;
};

void criaHeap(int *vet, int n, int k, long int *comp, long int *trocas)
{
    int maior = k;
    int filho_esquerda = (2 * k) + 1;
    int filho_direita = (2 * k) + 2;

    if (filho_esquerda < n && vet[filho_esquerda] > vet[maior])
        maior = filho_esquerda;

    if (filho_direita < n && vet[filho_direita] > vet[maior])
        maior = filho_direita;

    if (maior != k)
    {
        swap_heap((vet + k), (vet + maior));
        (*trocas)++;
        criaHeap(vet, n, maior, comp, trocas);
    }
};

void heapSort(int *vet, int n, long int *comp, long int *trocas)
{
    for (int k = n / 2 - 1; k >= 0; k--)
        criaHeap(vet, n, k, comp, trocas);

    for (int k = n - 1; k > 0; k--)
    {
        swap_heap((vet), (vet + k));
        (*trocas)++;
        criaHeap(vet, k, 0, comp, trocas);
    }
};

void countingSort(int *vet, int n, int index, long int *comp, long int *trocas)
{
    int base = 10;
    int *vetor_aux = (int *)malloc(n * sizeof(int));
    int vetor_count[base];
    for (int i = 0; i < base; i++)
        vetor_count[i] = 0;
    for (int i = 0; i < n; i++)
        vetor_count[(vet[i] / index) % base]++;
    for (int i = 1; i < base; i++)
        vetor_count[i] += vetor_count[i - 1];

    for (int i = n - 1; i >= 0; i--)
    {
        vetor_aux[vetor_count[(vet[i] / index) % base] - 1] = vet[i];
        vetor_count[(vet[i] / index) % base]--;
        (*trocas)++;
    }
    for (int i = 0; i < n; i++)
        vet[i] = vetor_aux[i];

    free(vetor_aux);
};

void redixSort(int *vet, int n, long int *comp, long int *trocas)
{
    int maior = vet[0];
    for (int i = 1; i < n; i++)
    {
        if (vet[i] > maior)
            maior = vet[i];
    }
    for (int index = 1; maior / index > 0; index *= 10)
        countingSort(vet, n, index, comp, trocas);
};

void copia(int *A, int *V, int size)
{
    int i;
    for (i = 0; i < size; i++)
        V[i] = A[i];
}

int main()
{

    int i;
    // int vetor[] = {1, 20, -10, 30, 5, 7};
    // int tamanhoVetor = (int)sizeof(vetor) / sizeof(int);
    int tamanhoVetor;
    // 1000, 5000,10000,50000, 100000 e 1000000
    // tamanhoVetor = 10;
    tamanhoVetor = 100;
    // tamanhoVetor = 1000;
    // tamanhoVetor = 5000;
    // tamanhoVetor = 10000;
    // tamanhoVetor = 50000;
    // tamanhoVetor = 100000;
    // tamanhoVetor = 1000000;

    int *vetor = (int *)malloc(tamanhoVetor * sizeof(int));

    int *vet_ins = (int *)malloc(tamanhoVetor * sizeof(int));
    long int *contador_ins = (long int *)malloc(sizeof(long int));
    long int *trocas_ins = (long int *)malloc(sizeof(long int));
    *contador_ins = 0;
    *trocas_ins = 0;

    int *vet_bb = (int *)malloc(tamanhoVetor * sizeof(int));
    long int *contador_bb = (long int *)malloc(sizeof(long int));
    long int *trocas_bb = (long int *)malloc(sizeof(long int));
    *contador_bb = 0;
    *trocas_bb = 0;

    int *vet_sel = (int *)malloc(tamanhoVetor * sizeof(int));
    long int *contador_sel = (long int *)malloc(sizeof(long int));
    long int *trocas_sel = (long int *)malloc(sizeof(long int));
    *contador_sel = 0;
    *trocas_sel = 0;

    int *vet_qs = (int *)malloc(tamanhoVetor * sizeof(int));
    long int *contador_qs = (long int *)malloc(sizeof(long int));
    long int *trocas_qs = (long int *)malloc(sizeof(long int));
    *contador_qs = 0;
    *trocas_qs = 0;

    int *vet_hp = (int *)malloc(tamanhoVetor * sizeof(int));
    long int *contador_hp = (long int *)malloc(sizeof(long int));
    long int *trocas_hp = (long int *)malloc(sizeof(long int));
    *contador_hp = 0;
    *trocas_hp = 0;

    int *vet_rx = (int *)malloc(tamanhoVetor * sizeof(int));
    long int *contador_rx = (long int *)malloc(sizeof(long int));
    long int *trocas_rx = (long int *)malloc(sizeof(long int));
    *contador_rx = 0;
    *trocas_rx = 0;

    srand(time(NULL));
    for (int i = 0; i < tamanhoVetor; i++)
    {
        vetor[i] = (rand() % tamanhoVetor);
        vet_bb[i] = vetor[i];
        vet_ins[i] = vetor[i];
        vet_sel[i] = vetor[i];
        vet_qs[i] = vetor[i];
        vet_hp[i] = vetor[i];
        vet_rx[i] = vetor[i];
    }
    printf("\nVetor original: ");
    for (i = 0; i < tamanhoVetor; i++)
        printf("%d ", vetor[i]);

    printf("\nVetor tamanho = %d\n", tamanhoVetor);

    // bubble sort
    clock_t begin_bb = clock();
    bubbleSort(tamanhoVetor, vet_bb, contador_bb, trocas_bb);
    clock_t end_bb = clock();
    double time_spent_bb = (double)(end_bb - begin_bb) / CLOCKS_PER_SEC;

    // insertion sort
    clock_t begin_ins = clock();
    insertionSort(tamanhoVetor, vet_ins, contador_ins, trocas_ins);
    clock_t end_ins = clock();
    double time_spent_ins = (double)(end_ins - begin_ins) / CLOCKS_PER_SEC;

    // selection sort
    clock_t begin_sel = clock();
    selectionSort(tamanhoVetor, vet_sel, contador_sel, trocas_sel);
    clock_t end_sel = clock();
    double time_spent_sel = (double)(end_sel - begin_sel) / CLOCKS_PER_SEC;

    // quick sort
    clock_t begin_qs = clock();
    quickSort(0, (tamanhoVetor - 1), vet_qs, contador_qs, trocas_qs);
    printf("\nsort vector quick:\n");
    print_vet(vet_qs, tamanhoVetor);
    printf("\ncomparacoes %ld", *contador_qs);
    printf("\ntrocas %ld", *trocas_qs);
    printf("\n");
    clock_t end_qs = clock();
    double time_spent_qs = (double)(end_qs - begin_qs) / CLOCKS_PER_SEC;

    // heap sort
    clock_t begin_hp = clock();
    heapSort(vet_hp, tamanhoVetor, contador_hp, trocas_hp);
    printf("\nsort vector heap:\n");
    print_vet(vet_hp, tamanhoVetor);
    printf("\ncomparacoes %ld", *contador_hp);
    printf("\ntrocas %ld", *trocas_hp);
    printf("\n");
    clock_t end_hp = clock();
    double time_spent_hp = (double)(end_hp - begin_hp) / CLOCKS_PER_SEC;

    // Redix sort
    clock_t begin_rx = clock();
    redixSort(vet_rx, tamanhoVetor, contador_rx, trocas_rx);
    printf("\nsort vector Radix:\n");
    print_vet(vet_rx, tamanhoVetor);
    printf("\ncomparacoes %ld", *contador_rx);
    printf("\ntrocas %ld", *trocas_rx);
    printf("\n");
    clock_t end_rx = clock();
    double time_spent_rx = (double)(end_rx - begin_rx) / CLOCKS_PER_SEC;

    printf("\nVetor tamanho = %d\n", tamanhoVetor);
    printf("\n end time bubble : %f | comparações : %ld | trocas : %ld", time_spent_bb, *contador_bb, *trocas_bb);
    printf("\n end time insertion : %f | comparações : %ld | trocas : %ld", time_spent_ins, *contador_ins, *trocas_ins);
    printf("\n end time selection : %f | comparações : %ld | trocas : %ld", time_spent_sel, *contador_sel, *trocas_sel);
    printf("\n end time quick : %f | comparações : %ld | trocas : %ld", time_spent_qs, *contador_qs, *trocas_qs);
    printf("\n end time heap : %f | comparações : %ld | trocas : %ld", time_spent_hp, *contador_hp, *trocas_hp);
    printf("\n end time radix : %f | comparações : %ld | trocas : %ld", time_spent_rx, *contador_rx, *trocas_rx);
    printf("\n");

    free(vetor);

    free(vet_ins);
    free(contador_ins);
    free(trocas_ins);

    free(vet_bb);
    free(contador_bb);
    free(trocas_bb);

    free(vet_sel);
    free(contador_sel);
    free(trocas_sel);

    free(vet_qs);
    free(contador_qs);
    free(trocas_qs);

    free(vet_hp);
    free(contador_hp);
    free(trocas_hp);

    free(vet_rx);
    free(contador_rx);
    free(trocas_rx);

    return 0;
}
