// A - Crie as estruturas indicadas, e crie o primeiro funcionário da lista encadeada;
// B - Adicione um segundo funcionário mantendo o encadeamento;
// C - Crie uma função que receba o ponteiro inicial da lista e imprima todos os elementos (funcionários)

#include #include #include

typedef struct
{
    int dia;
    int mes;
    int ano;
} tData;

struct tFuncionario
{
    int id;
    char nome[41];
    double salario;
    tData nascimento;
    struct tFuncionario *next;
};
typedef struct tFuncionario tFuncionario;

tFuncionario *cria_funcionario(tFuncionario *first)
{
    tFuncionario *aux;
    tFuncionario *func;
    int tamanho = 1;
    if (first == NULL)
    {
        first = (tFuncionario *)malloc(sizeof(tFuncionario));
        first->id = 1;
        strcpy(first->nome, "Pafuncio");
        first->salario = 3000.0;
        first->next = NULL;
    }
    else
    {
        func = (tFuncionario *)malloc(sizeof(tFuncionario));
        for (aux = first; aux->next != NULL; aux = aux->next)
        {
            tamanho += 1;
        }
        func->id = tamanho + 1;
        strcpy(func->nome, "Pafuncio");
        func->salario = 3000.0;
        func->next = NULL;
        aux->next = func;
    }
    return first;
}

void showList(tFuncionario *first)
{
    tFuncionario *aux; // vai ser nosso 'contador'
    for (aux = first; aux != NULL; aux = aux->next)
    {
        // aqui aux vale o elemento atual na lista.
        printf("Funcionario id: %d, nome: %s, salario: %lf\n", aux->id, aux->nome, aux->salario);
    }
}
void freeMemory(tFuncionario *p)
{
    if (p == NULL)
        return;
    freeMemory(p->next);
    printf("free id:%d\n", p->id);
    free(p);
}

int main()
{

    tFuncionario *first_funcionario = NULL;

    // int tamanho = 0;
    // if (first_funcionario == NULL){
    // first_funcionario = (tFuncionario *)malloc(sizeof(tFuncionario));
    // tamanho += 1;
    // first_funcionario -> id = 1;
    // strcpy(first_funcionario->nome,"Pafuncio");
    // first_funcionario->salario = 3000.0;
    // first_funcionario->next = NULL;
    // }

    // func = (tFuncionario *)malloc(sizeof(tFuncionario));
    // tamanho += 1;
    // func -> id = tamanho;
    // strcpy(func->nome,"Pafuncio1");
    // func->salario = 3000.0;
    // func->next = NULL;

    // first_funcionario->next = func;

    // aux = func;

    // func = (tFuncionario *)malloc(sizeof(tFuncionario));
    // tamanho++;
    // func -> id = tamanho;
    // strcpy(func->nome,"Pafuncio2");
    // func->salario = 3000.0;
    // func->next = NULL;
    // aux->next = func;

    // first_funcionario = cria_funcionario(first_funcionario);
    first_funcionario = cria_funcionario(first_funcionario);
    first_funcionario = cria_funcionario(first_funcionario);
    first_funcionario = cria_funcionario(first_funcionario);
    first_funcionario = cria_funcionario(first_funcionario);
    first_funcionario = cria_funcionario(first_funcionario);
    first_funcionario = cria_funcionario(first_funcionario);
    first_funcionario = cria_funcionario(first_funcionario);

    showList(first_funcionario);
    freeMemory(first_funcionario);
    return 0;
}