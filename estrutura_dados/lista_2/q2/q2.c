// 2. ⊙ Fa ̧ca um programa que simule a multiplica ̧c ̃ao atrav ́es de adi ̧c ̃oes. Para tal ser ̃ao pedidos os dois
// operandos. Por exemplo se for informado 3 e 4, dever ́a ser calculado, atrav ́es de soma, 3∗4, ou seja, 12.
// Este c ́alculo  ́e feito somando o primeiro valor informado por ele mesmo o n ́umero de vezes representada
// pelo segundo n ́umero. Nesse exemplo, o trˆes seria somado quatro vezes: 3+3+3+3, resultado 12.

#include <stdio.h>
int main(){
    int i,x,y,mult=0;
    printf("informe o primeiro fator:");
    scanf("%d",&x);
    printf("informe o segundo fator:");
    scanf("%d",&y);
    for(i=0;i<y;i++){
        mult+=x;
    }
    printf("resultado: %d\n",mult);

    return 0;
}