// 4. Faça um programa que peça 4 números inteiros. Em seguida, apresente quantos números informados são negativos e quantos são positivos (considere o 0 como positivo). Exemplos de execução:
// 	N1: 12		N1: -1
// 	N2: 4			N2: -20
// 	N3: -3		N3: -7
// 	N4: 5			N4: -11
// 	3 (+) e 1 (-)	0 (+) e 4 (-)
#include <stdio.h>

int main(){
    int count_pos=0, count_neg = 0;
    int num,i;
    for(i = 1; i < 5; i++){
        printf("informe o numero %d:",i);
        scanf("%d",&num);
        (num >= 0) ? count_pos ++ : count_neg ++ ;
    }
    printf("%d(+)  %d(-)",count_pos,count_neg);
    return 0;
}