#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TRUE 1

typedef struct {
  int dia;
  int mes;
  int ano;
} Data;

struct funcionario {
  int id;
  char nome[41];
  double salario;
  Data nascimento;
  struct funcionario *next;
};
typedef struct funcionario Funcionario;

void showInvertList(Funcionario *p) {
  if (p == NULL)
    return;
  showInvertList(p->next);
  printf("-----------------------------\n");
  printf("Id: %d\nNome: %s\nSalário: %.2f\nNascimento: %2d/%2d/%4d\n", p->id,
         p->nome, p->salario, p->nascimento.dia, p->nascimento.mes,
         p->nascimento.ano);
}
void showList(Funcionario *p) {
  Funcionario *aux;
  for (aux = p; aux != NULL; aux = aux->next) {
    printf("-----------------------------\n");
    printf("Id: %d\nNome: %s\nSalário: %.2f\nNascimento: %2d/%2d/%4d\n",
           aux->id, aux->nome, aux->salario, aux->nascimento.dia,
           aux->nascimento.mes, aux->nascimento.ano);
  }
}

void freeMemory(Funcionario *p) {
  if (p == NULL)
    return;
  free(p);
  freeMemory(p->next);
}
//
Funcionario *insEnd(Funcionario *first, Funcionario *f) {
  Funcionario *aux;
  if (first == NULL) // lista vazia
  {
    first = f;
    return first;
  }
  for (aux = first; aux->next != NULL; aux = aux->next) //
    ;            // percorre a lista até o último
  aux->next = f; // o último aponta agora para o novo
  return first;
}
//
// 3 cases:
//   1. Delete the first one (update first)
//   2. Delete the last one (the easiest case)
//   3. Delete in the middle (fix all the pointes between the deleted employee)
Funcionario *deleteFunc(Funcionario *f, int ident) {
  Funcionario *aux, *aux_ant=f;
  for (aux=f;aux!=NULL;aux=aux->next)
    {
      if (aux->id==ident) break;
      aux_ant=aux;
    }
  if (aux==NULL)
  {
    printf("Elemento não encontrado!\n");
    return f;
  }
  if (aux==f) // Caso 1
  {
    f=aux->next;
    free(aux);
    return f;
  }
  if (aux->next==NULL) // Caso 2
  {
    aux_ant->next=NULL;
    free(aux);
    return f;
  }
  aux_ant->next=aux->next;
  free(aux);
  return f;
}

  int main() {
    Funcionario *func, *aux, *first = NULL;
    int id;
    while (TRUE) {
      scanf("%d", &id);
      if (id <= 0)
        break;
      func = (Funcionario *)malloc(sizeof(Funcionario));
      func->id = id;
      scanf("%s", func->nome); 
      scanf("%lf", &func->salario);
      scanf("%d %d %d", &func->nascimento.dia, &func->nascimento.mes,
            &func->nascimento.ano);
      func->next = NULL;
      first = insEnd(first, func);
      // if (first==NULL) first=func;
      // else aux->next=func;
      // aux=func;
    }
    showList(first);
    printf("******\n");
    while (TRUE)
      {
        printf("Id to delete: ");
        scanf("%d", &id);
        if (id<=0) break;
        first = deleteFunc(first, id);
        showList(first);
      }
    //printf("******\n");
    //showList(first->next->next);
    //printf("******\n");
    //showInvertList(first);
    ///
    freeMemory(first);
    return 0;
  }