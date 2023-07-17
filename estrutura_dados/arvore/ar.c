#include <stdio.h>
#include <stdlib.h>

#define N 20

typedef struct node
{
    int valor;
    struct node *left;
    struct node *right;
} Node;

typedef struct root
{
    Node *node;
} Raiz;

Node *setNode(int valor);
Node *insereNodo(Node *raiz, Node *novo);
Node *removeRaiz(Node *raiz, int alvo);
Node *busca(Node *raiz, int alvo);
void imprimeEmOrdem(Node *raiz);
void imprimePreOrdem(Node *raiz);
void imprimePosOrdem(Node *raiz);
int menorValor(Node *raiz);
void destroiArvore(Node *raiz);

int main()
{

    int chaves[] = {13, 16, 10, 7, 4, 1, 2, 9, 12, 15, 19, 5, 8, 0, 14, 6, 3, 11, 18, 17};

    Raiz root;
    root.node = NULL;

    for (int i = 0; i < N; i++)
    {
        printf("Inserindo %d.\n", chaves[i]);
        Node *novo = setNode(chaves[i]);
        if (root.node == NULL)
            root.node = novo;
        else
            insereNodo(root.node, novo);
    }
    printf("\n");

    int chavesBusca[] = {3, -1, 7, 10, 8};
    printf("--- BUSCA ---\n");
    for (int i = 0; i < 5; i++)
    {
        Node *resultado = busca(root.node, chavesBusca[i]);
        if (resultado != NULL)
            printf("Chave %d encontrada na árvore (End.: %p).\n", resultado->valor, resultado);
        else
            printf("Chave %d não encontrada na árvore.\n", chavesBusca[i]);
    }
    printf("\n");

    printf("Árvore 'em ordem'/E-R-D/left-root-right:\n");
    imprimeEmOrdem(root.node);
    printf("\n\n");

    printf("Árvore 'pré ordem'/R-E-D/root-left-right/'de-cima-para-baixo:'\n");
    imprimePreOrdem(root.node);
    printf("\n\n");

    printf("Árvore 'pós ordem'/E-D-R/left-right-root/'de-baixo-para-cima:'\n");
    imprimePosOrdem(root.node);
    printf("\n\n");

    /**
     *
     *  DESAFIO!!
     *
     */
    // printf("--- REMOÇÃO DO NODO = 4 ---\n\n");
    // raiz->node = removeRaiz(raiz->node, 4);

    // printf("Árvore 'em ordem'/E-R-D/left-root-right:\n");
    // imprimeEmOrdem(raiz->node);
    // printf("\n\n");

    // destroiArvore(root.node);
    free(root.node);
    printf("\n");

    return 0;
}

Node *busca(Node *n, int alvo)
{
    if (n == NULL)
        return NULL;
    if (n->valor == alvo)
        return n;
    if (alvo > n->valor)
        return busca(n->right, alvo);
    else
        return busca(n->left, alvo);
}
Node *setNode(int valor)
{
    Node *novo = (Node *)malloc(sizeof(Node));
    novo->valor = valor;
    novo->left = NULL;
    novo->right = NULL;
    return novo;
}

Node *insereNodo(Node *raiz, Node *novo)
{
    if (raiz == NULL)
    {
        return novo;
    }
    else
    {
        if (novo->valor <= raiz->valor)
            raiz->left = insereNodo(raiz->left, novo);
        else
            raiz->right = insereNodo(raiz->right, novo);
    }
    return raiz;
}

void imprimePreOrdem(Node *raiz)
{
    if (raiz != NULL)
    {
        printf("%d ", raiz->valor);
        imprimeEmOrdem(raiz->left);
        imprimeEmOrdem(raiz->right);
    }
}

void imprimePosOrdem(Node *raiz)
{
    if (raiz != NULL)
    {
        imprimeEmOrdem(raiz->left);
        imprimeEmOrdem(raiz->right);
        printf("%d ", raiz->valor);
    }
}

void imprimeEmOrdem(Node *raiz)
{
    if (raiz != NULL)
    {
        imprimeEmOrdem(raiz->left);
        printf("%d ", raiz->valor);
        imprimeEmOrdem(raiz->right);
    }
}