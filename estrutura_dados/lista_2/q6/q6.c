// 6. ⊙ Dada uma sequˆencia de n n ́umeros (um n ́umero menor ou igual `a 0 finaliza a sequˆencia), apresentar
// o porcentual de n ́umeros informados que s ̃ao maior ou igual `a 10 e menor ou igual `a 20. Exemplo:
// 5
// 6
// 11
// 21
// 0
// % entre 10 e 20: 33.33%


#include <stdio.h>

int main(){
    int num,count=0;
    float por=0;
    do{
        printf("informe um numero:");
        scanf("%d",&num);
        count++;
        if (num >= 10 && num <= 20 ){
            por++;
        }
    } while (num != 0);
    // printf("%f|%d\n",por,count);
    printf("confiderando 0 %% entre 10 e 20: %.2f%%\n",(por/(count-1))*100);
    printf("sem conciderando 0 %% entre 10 e 20: %.2f%%\n",(por/count)*100);

    return 0 ;
}