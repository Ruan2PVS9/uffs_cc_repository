// 2. ⊙ Fa ̧ca um programa que simule a multiplica ̧c ̃ao atrav ́es de adi ̧c ̃oes. Para tal ser ̃ao pedidos os dois
// operandos. Por exemplo se for informado 3 e 4, dever ́a ser calculado, atrav ́es de soma, 3∗4, ou seja, 12.
// Este c ́alculo  ́e feito somando o primeiro valor informado por ele mesmo o n ́umero de vezes representada
// pelo segundo n ́umero. Nesse exemplo, o trˆes seria somado quatro vezes: 3+3+3+3, resultado 12.

#include <stdio.h>
int main(){
    int k, *b;
    k = 10;
    b = &k;
    int num =1;

    printf("%d -- %p\n",k , &k );
    printf("%p -- %d\n",b , *b );
    k = 2;

    printf("%p -- %d\n",b , *b );

    switch (num){
        case 1:
            printf("\n1-%d",num);
            break;
        case 2:
            printf("\n2-%d",num);
            break;
        case 3:
            printf("\n3-%d",num);
            break;
        case 4:
            printf("\n4-%d",num);
            break;
        default:
            break;
    }

    return 0;


}