
// 6. Sabendo que as faixas etárias para votação são: 18 a 70 anos voto obrigatório; 16, 17 e acima de 70 anos voto facultativo; outras idades (ou seja, menor que 16 anos) não pode votar.
// 	Idade: 20			Idade: 17			Idade: 12
// 	Voto obrigatório		Voto facultativo		Não pode votar

#include <stdio.h>
int main(){
    int idade;
    printf("\ninforme a idade:");
    scanf("%d",&idade);
    // (idade >=18) ? printf("\n Maior de idade\n"):printf("\nMEnor de idade\n");

    if (idade >= 18 && idade <= 70)
        printf("voto obrigatorio");
    else if (idade >= 16 && idade <= 17 || idade > 70)
        printf("voto facultativo");
    else
        printf("não pode votar");

    return 0;
}