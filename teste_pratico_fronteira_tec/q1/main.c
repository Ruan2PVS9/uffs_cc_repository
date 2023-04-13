// Faça um algoritmo que leia 3 (double) notas de
// um aluno e calcule a média final deste aluno.
// Considere que a média é ponderada e que o peso
// das notas é: 2,3 e 5, respectivamente.
// Exemplos de entrada: 8 10 3.5
// Exemplo de saída: 6.35
#include <stdio.h>

int main(){

    double notas[3], soma=0,peso=2;
    

    for (int i = 0; i < 3; i++){
        printf("informe a %dº nota:",i+1);
        scanf("%lf",&notas[i]);
        peso += i;
        soma += notas[i] * (peso/10);
    }
    printf("a media do aluno : %.2lf",soma);
}