// 3. Faça um programa que calcule a duração de um evento qualquer. Para tal, o programa pede a hora de início e hora de fim (sem os minutos), as horas serão informadas de 0 a 23. Perceba que um evento pode começar em um dia e acabar em outro. Os eventos nunca durarão mais de 24 horas. Exemplos de execução:
// 	Início: 12			    Início: 10			        Início: 21
// 	Fim: 4			        Fim: 15			            Fim: 6
// 	Duração: 16 horas		Duração: 5 horas    		Duração: 9 horas


#include <stdio.h>

int input_hour(char *msg[]){
    int var, valido = 1;
    
    while (valido){
        printf("\n%s",msg);
        scanf("%d",&var);
        (var >= 0 && var < 24) ? valido = 0 : printf("hora não é valida") ;
    }


    return var;
}

int main(){
    int inicio,fim;
    int* pinicio = &inicio;
    // printf("\ninicio: %d", inicio);
    // printf("\ninicio: %p", &inicio); // mostrar local da memoria 
    // printf("\ninicio: %p", pinicio); // mostrar local da memoria 
    inicio = input_hour("inicio:");
    printf("\ninicio: %d", inicio);
    fim = input_hour("\nfim:");
    printf("\nfim: %d", fim);

    if (inicio > fim){
        printf("\nO tempo de duração do evento é de %d horas",(24-inicio)+fim);
    } else if(inicio == fim){
        printf("\nO tempo de duração do evento é de 0 horas");
    }else{
        printf("\nO tempo de duração do evento é de %d horas", (fim - inicio));
    }
    return 0;
}