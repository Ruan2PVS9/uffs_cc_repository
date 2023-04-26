#include <stdio.h>
#include "data.h"

int main(){
    Data d = atribData(17,4,2023);
    printData(d);
    int nd = numDias(d);
    printf("\ndias ate %d\n",nd);
    return 0;
}