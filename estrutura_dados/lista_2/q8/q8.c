// 8. ⊙ Antonio tem 1,50m e cresce 2cm por ano. Carlos tem 1,10m e cresce 3cm por ano. Fazer um
// programa que calcule quantos anos seriam necess ́arios para que Carlos tivesse a mesma altura que
// Antonio. Supondo que os dois crescem todos os anos.

#include <stdio.h>

int main(){
    float ant = 1.5, car=1.1;
    int count=0;
    do {
        ant+=0.02;
        car+=0.03;
        count++;
    } while (ant>car);

    printf("seria nescessario %d anos para Calos alcançar a altura de Antonio, respectivamente %.2fm e %.2fm",count,car,ant);
    

    return 0 ;
}