// 1. • Fa ̧ca um programa que pe ̧ca um n ́umero e imprima os n ́umeros de 1 at ́e o n ́umero informado. Sendo
// que, quando chegar na metade da impress ̃ao, mostrar a mensagem Metade (a metade n ̃ao precisa ser
// exata). Por exemplo, se for informado o n ́umero seis, ser ́a impresso:
// 1
// 2
// 3
// Metade
// 4
// 5
// 6

#include <stdio.h>

int main(){
    int num, i;
    printf("informe o numero:");
    scanf("%d", &num);

    for(i=1; i< num+1;i++){
        printf("%d\n",i);
        if (i == num/2){
            printf("Metade\n");
        }
    }


    return 0 ;
}