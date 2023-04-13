// 5⊘ Fa ̧ca um programa para calcular o fatorial de um n ́umero dado. O fatorial de um n ́umero n  ́e
// n × (n − 1) × (n − 2) × . . . × 1, por defini ̧c ̃ao o fatorial de 0 e 1  ́e 1. Por exemplo, o fatorial de 5  ́e
// 120, ou seja, 5 × 4 × 3 × 2 × 1 (perceba que n ̃ao  ́e necess ́ario fazer a  ́ultima multiplica ̧c ̃ao j ́a que 1  ́e o
// elemento neutro da multiplica ̧c ̃ao).

#include <stdio.h>

int main(){
    int num,num2, fatorial,fatorial2,i;
    printf("informe o numero:");
    scanf("%d",&num);
    fatorial = num;
    fatorial2 = num;
    num2 = num;
    for (i=num-1; i>1; --i){
        printf("%d*%d\n",num,i);
        num = num*i;
    }
    printf("%d\n",num);
    for (i=num2-1; i>1; i--){
        printf("%d*%d\n",num2,i);
        num2 = num2*i;
    }
    printf("%d\n",num2);
    for (i=2; i<fatorial2; i++){
        printf("%d*%d\n",fatorial,i);
        fatorial = fatorial*i;
    }
    printf("%d\n",fatorial);

    return 0 ;
}