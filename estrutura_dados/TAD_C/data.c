#include <stdlib.h>
#include <stdio.h>

#include "data.h"

Data atribData(int dia, int mes, int ano)
{
    Data d;
    d.dia = dia;
    d.mes = mes;
    d.ano = ano;
    return d;
}

void printData(Data d)
{
    printf("%2d/%2d/%4d", d.dia, d.mes, d.ano);
}

int numDias(Data d)
{
    int qtd_dias;
    qtd_dias = d.dia + ((d.mes - 1) * 30);
    return qtd_dias;
}
