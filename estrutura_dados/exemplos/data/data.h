#include <stdio.h>

struct tdata {
   int dia;
   int mes;
   int ano;
};

typedef struct tdata data;

data atribData(int dia, int mes, int ano);

void printDataEu(data dt);
void printDataAm(data dt);
void printDataAnsi(data dt);

int numDias(data dt);

