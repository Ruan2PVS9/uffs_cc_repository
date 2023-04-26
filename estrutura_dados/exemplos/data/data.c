#include <stdio.h>
#include "data.h"

data atribData(int dia, int mes, int ano)
{
	data d;
	d.dia=dia;
	d.mes=mes;
	d.ano=ano;
	return d;
}

void printDataEu(data dt)
{
	printf("%2d/%2d/%4d\n",dt.dia, dt.mes, dt.ano);
}

void printDataAm(data dt)
{
	printf("%2d/%2d/%4d\n",dt.mes, dt.dia, dt.ano);
}

void printDataAnsi(data dt)
{
	printf("%4d/%2d/%2d\n",dt.ano, dt.mes, dt.dia);
}

int numDias(data dt)
{
	int ddays=0;
	ddays=dt.dia+((dt.mes-1)*30);
	return ddays;
}
