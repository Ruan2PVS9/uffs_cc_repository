// 3. ⊙ Fa ̧ca um programa que pe ̧ca uma valor e imprima a soma de todos os n ́umeros de 1 at ́e o valor
// informado. Por exemplo, se o valor informado for 6, o resultado ser ́a 21, ou seja, 1 + 2 + 3 + 4 + 5 + 6.

#include <stdio.h>

int main(){
    int num,i,soma=0;
    printf("informe o numero:");
    scanf("%d",&num);
    for(i=1;i<num+1;i++){
        soma+=i;
    }
    printf("%d\n",soma);
    return 0;
}