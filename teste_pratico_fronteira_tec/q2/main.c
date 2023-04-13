// Escreva um algoritmo que receba do usuário 6
// números inteiros e imprima o número de
// ocorrências do menor número.
// Exemplo de entrada: 4 2 98 2 41 2
// Exemplo de saída: O menor número é o ‘2’ e ele aparece 3
// vezes

#include <stdio.h>

int main(){
    int numeros[6],qtd_menor=0, menor;
    
    for (int i = 0; i < 6; i++){
        printf("informe a %dº numero:",i+1);
        scanf("%d",&numeros[i]);
        if (i == 0 || numeros[i] < menor){
            menor = numeros[i];
        }
    }
    for (int i = 0; i < 6; i++){
        if( numeros[i] == menor){
            qtd_menor++;
        }
    }
    printf("o menor numero '%d' aparece %d vezes",menor,qtd_menor);
    
}