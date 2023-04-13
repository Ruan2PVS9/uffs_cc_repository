// 7. ⊙ Fa ̧ca um programa que pe ̧ca o sal ́ario e o n ́umero de filhos dos habitantes de uma regi ̃ao. Quando
// o sal ́ario informado for menor que zero, as entradas s ̃ao finalizadas e ser ̃ao apresentadas as m ́edias
// salarial e de filhos informados. Exemplo:
// Sal ́ario: 1500
// Filhos: 2
// Sal ́ario: 3245
// Filhos: 2
// Sal ́ario: -1
// M ́edia sal ́arios: 2372.5
// M ́edia filhos: 2.0


#include <stdio.h>

int main(){
    float salario,soma_sal=0,soma_filho=0;
    int filhos,count=0;
    do {
       printf("Salario:");
       scanf("%f",&salario);
       if (salario<0){
        break;
       } 
       soma_sal+=salario;
       printf("Filhos:");
       scanf("%d",&filhos);
       soma_filho+=filhos;
       count++;
    } while (salario>0); 
    printf("\nMedia Salarial: R$%.2f",(soma_sal/count));
    printf("\nMedia Filhos: %.0f",(soma_filho/count));
    return 0 ;
}   