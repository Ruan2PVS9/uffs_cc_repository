#include <stdio.h>
#include "data.h"

int main()
{
	data d;
	int nd;
	d=atribData(17,04,2023);
	printDataEu(d);
	printDataAm(d);
	nd=numDias(d);
	printf("Número de dias até a data: %d\n",nd);
	return 0;
}
