// 4. ⊘ Construa um programa que simule uma calculadora simples. Primeiro  ́e informada a opera ̧c ̃ao
// desejada +, ?, ? ou /, em seguida os dois operandos e apresente o resultado da opera ̧c ̃ao. O Programa
//  ́e finalizado quando a opera ̧c ̃ao desejada for igual `a @.

#include <stdio.h>

float soma(float a,float b){
     return a+b;
}
float sub(float a,float b){
     return a-b;
}
float div(float a,float b){
     return a/b;
}
float mult(float a,float b){
     return a*b;
}

int main(){
    int ope;
    float  a,b,res;
    printf("\n1-|+|\n2-|-|\n3-|/|\n4-|*|\n5-|@|\ninforme a operação:");
    scanf("%d",&ope);
    while (ope != 5){
        
        printf("\ninforme o primeiro numero:");
        scanf("%f",&a);
        printf("\ninforme o segundo numero:");
        scanf("%f",&b);
        switch (ope){
            case 1:
                /* code */
                res = soma(a,b);
                break;
            case 2:
                /* code */
                res = sub(a,b);

                break;
            case 3:
                /* code */
                res = div(a,b);

                break;
            case 4:
                /* code */
                res = mult(a,b);
                break;
            case 5:
                /* code */
                break;
            default:
                printf("\noperação invalida");
                break;
        }
        printf("\n%.2f",res);
        printf("\n1-|+|\n2-|-|\n3-|/|\n4-|*|\n5-|@|\ninforme a operação:");
        scanf("%d",&ope);       
    }
    printf("\nvaleu");
    return 0;
}