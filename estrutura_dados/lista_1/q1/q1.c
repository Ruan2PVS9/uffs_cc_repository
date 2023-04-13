// 1. Faça um programa que peça o número de horas trabalhadas e o valor da hora de um determinado funcionário. Em seguida, calcule o salário do funcionário. Caso o funcionário tenha trabalhado mais de 200 horas, o salário final é acrescido de 5%. Exemplos de execução:
// 	Horas trabalhadas: 120				Horas trabalhadas: 210
// 	Valor da hora: 100,00				Valor da hora: 50.00
// 	Salário: 12000.00					Salário: 11025.00


#include <stdio.h>

int main(){
    int horas;
    float sal_base, sal_final;

    printf("\ninforme o salario base:");
    scanf("%f",&sal_base);
    printf("\ninforme o as horas trabalhadas:");
    scanf("%d",&horas);
    if (horas > 200){
        sal_final = (sal_base*horas)*1.05;
    }else{
        sal_final = sal_base*horas;        
    }

    printf("\nSalario: R$%.2f", sal_final);
    printf("\nvlw\n");
    return 0;
}
