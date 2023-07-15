#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct tdata
{
    int dia;
    int mes;
    int ano;
};
typedef struct tdata Data;
struct taluno
{
    char matricula[10];
    char nome[40];
    Data nascimento;
    float nota;
};
typedef struct taluno Aluno;

struct tlistaaluno
{
    Aluno aluno;
    struct tlistaaluno *next;
};
typedef struct tlistaaluno listaAluno;

void freeMemory(listaAluno *p)
{
    if (p == NULL)
    {
        printf("-");
        return;
    }
    freeMemory(p->next);
    free(p);
}

listaAluno *inserirAluno(listaAluno *first)
{
    listaAluno *aux;
    aux = (listaAluno *)malloc(sizeof(listaAluno));
    scanf("%s", aux->aluno.matricula);
    scanf("%s", aux->aluno.nome);
    scanf("%d/%d/%d", &aux->aluno.nascimento.dia, &aux->aluno.nascimento.mes, &aux->aluno.nascimento.ano);
    scanf("%f", &aux->aluno.nota);
    aux->next = NULL;
    if (first == NULL)
    {
        first = aux;
    }
    else
    {
        listaAluno *i;

        for (i = first; i->next != NULL; i = i->next)
        {
            if (strcmp(i->aluno.matricula, aux->aluno.matricula) == 0)
            {
                i->aluno.nascimento = aux->aluno.nascimento;
                strcpy(i->aluno.nome, aux->aluno.nome);
                i->aluno.nota = aux->aluno.nota;
                return first;
            }
        };

        i->next = aux;
    }
    return first;
}

listaAluno *deleteAluno(listaAluno *first)
{
    if (first == NULL)
    {
        printf("Lista Vazia!\n");
        return first;
    }
    char mat[10];
    scanf("%s", mat);
    listaAluno *aux, *aux_ant = first;
    for (aux = first; aux != NULL; aux = aux->next)
    {
        if (strcmp(aux->aluno.matricula, mat) == 0)
        {
            if (aux == first)
            {
                if (aux->next != NULL)
                {
                    first = aux->next;
                }
                else
                {
                    first = NULL;
                }
            }
            else
            {
                aux_ant->next = aux->next;
            }
            free(aux);
        }
        else
            aux_ant = aux;
    }
    return first;
}
void mostrarListaAsc(listaAluno *a)
{
    if (a == NULL)
    {
        printf("Lista Vazia!\n");
        return;
    }
    listaAluno *aux;
    for (aux = a; aux != NULL; aux = aux->next)
    {
        printf("%s, %s, %d/%d/%d, %.2f\n", aux->aluno.matricula, aux->aluno.nome, aux->aluno.nascimento.dia, aux->aluno.nascimento.mes, aux->aluno.nascimento.ano, aux->aluno.nota);
    }
}
void mostrarListaDsc(listaAluno *a)
{
    if (a == NULL)
    {
        return;
    }
    mostrarListaDsc(a->next);
    printf("%s, %s, %d/%d/%d, %.2f\n", a->aluno.matricula, a->aluno.nome, a->aluno.nascimento.dia, a->aluno.nascimento.mes, a->aluno.nascimento.ano, a->aluno.nota);
}

void qtdAlunos(listaAluno *a)
{
    int count = 0;
    listaAluno *aux;
    for (aux = a; aux != NULL; aux = aux->next)
    {
        count += 1;
    }
    printf("%d\n", count);
}

int main()
{
    int ops, True = 1;
    listaAluno *first = NULL;
    while (True)
    {
        scanf("%d", &ops);
        switch (ops)
        {
        case 0: // Sair do programa | limpar
            /* code */
            // goto EndWhile;
            freeMemory(first);
            True = 0;
            break;
        case 1: // Incluir elemento na lista;
            first = inserirAluno(first);
            break;
        case 2: // Excluir elemento da lista;
            /* code */
            first = deleteAluno(first);
            break;
        case 3: // Listar todos os elementos da lista na ordem de inclusão;
            /* code */
            mostrarListaAsc(first);
            break;
        case 4: // Listar todos os elementos da lista na ordem inversa a inclusão;
            /* code */
            if (first == NULL)
                printf("Lista Vazia!");
            mostrarListaDsc(first);
            break;
        case 5: // Apresentar quantos elementos existem na lista;
            /* code */
            qtdAlunos(first);
            break;
        default:
            // break;
        }
    }
    return 0;
}