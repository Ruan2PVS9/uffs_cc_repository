// 5. Você vai fazer um programa para classificar os competidores segundo as suas posições. Foram criadas 5 classes: Top 5 (1-5), Top 10 (6-10), Top 20 (11-20), Top 30 (21-30) e Top 100 (outras posições). Faça um programa que peça a posição do competidor e indique a classe do mesmo.
// 	Posição: 12			Posição: 5		Posição: 34
// 	Top 20			Top 5			Top 100 
#include <stdio.h>
int main(){
    int posicao;
    printf("informe a posição:");
    scanf("%d",&posicao);
    if (posicao >= 1 && posicao <= 5)
        printf("top 5");
    else if (posicao >= 6 && posicao <= 10)
        printf("top 10");
    else if (posicao >= 11 && posicao <= 20)
        printf("top 20");
    else if (posicao >= 21 && posicao <= 30)
        printf("top 30");
    else if (posicao >= 31 && posicao <= 100)
        printf("top 100");
    else
        printf("posição invalida");
    
    return 0;

}
