// 2. Uma loja vende produtos à vista e a prazo (pagamento 30 dias depois da compra). À vista tem um desconto de 5% e a prazo um acréscimo de 10%. Faça um programa em Python que peça o preço do produto e a forma de pagamento: 1 para à vista e 2 para a prazo. Depois apresente o preço final do produto. Exemplos de execução:
// 	Preço do produto: 120.00				Preço do produto: 200.00
// 	Forma de pagamento: 1					Forma de pagamento: 2
// 	Preço a vista: 114.00					Preço a prazo: 220.00
#include <stdio.h>
int main(){
    float preco;
    int pag;
    printf("\ninforme o o preço do produto:");
    scanf("%f",&preco);
    printf("forma de pagamento:");
    scanf("%d",&pag);
    if (pag == 1)
        printf("Preço a vista: R$%.2f\n",preco*0.95);
    else
        printf("Preço a prazo: R$%.2f\n",preco*1.10);
    // if ternario
    (pag == 1) ? printf("\nPreço a vista: R$%.2f\n",preco*0.95) : printf("\nPreço a prazo: R$%.2f\n",preco*1.10);

    
    
    return 0 ;
}