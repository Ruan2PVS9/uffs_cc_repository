// Escreva as seguintes funções considerando o tipo Data definido nesta apresentação:
// int extraiDia(Data data)
// Retorna o dia que compõe a data data.
// int comparaDatas(Data data1, Data data2)
// Retorna -1 se a data data1 é anterior à data data2, 1 se a data data1 é posterior à data data2 e 0 se as datas data1 e data2 são iguais.

#include <stdio.h>

typedef struct data {
  int dia;
  int mes;
  int ano;
}Data;

Data constroiData(int dia, int mes, int ano) {
  Data data;
  data.dia = dia;
  data.mes = mes;
  data.ano = ano;
  return data;
}

void imprimeData(Data data) {
//   printf("Dia: %d\n", data.dia);
//   printf("Mes: %d\n", data.mes);
//   printf("Ano: %d\n", data.ano);
  printf("%.2d/%.2d/%.4d\n",data.dia,data.mes, data.ano);
}

int extraiDia(Data data){
    printf("\ndia: %.2d",data.dia);
    return data.dia;
}

int comparaDatas(Data data1, Data data2){
    if (data1.ano == data2.ano && data1.mes == data2.mes && data1.dia == data2.dia){
        printf("\niguais->\n");
        imprimeData(data1);
        imprimeData(data2);
        return 0;
    } else if ((data1.ano > data2.ano ) || (data1.ano == data2.ano && data1.mes > data2.mes) || (data1.ano == data2.ano && data1.mes == data2.mes && data1.dia > data2.dia)){
        printf("\nposterior->\n");
        imprimeData(data1);
        imprimeData(data2);
        return 1;
    } else {
        printf("\nanterior->\n");
        imprimeData(data1);
        imprimeData(data2);
        return -1;
    }
}

int main(){
    Data data1,data2;

    data1 = constroiData(10,4,2023);
    data2 = constroiData(9,4,2023);
    comparaDatas(data1,data2);
    
    data1 = constroiData(10,4,2023);
    data2 = constroiData(11,4,2023);
    comparaDatas(data1,data2);

    data1 = constroiData(10,4,2023);
    data2 = constroiData(10,4,2023);
    comparaDatas(data1,data2);

    data1 = constroiData(10,3,2023);
    data2 = constroiData(10,4,2023);
    comparaDatas(data1,data2);
    data1 = constroiData(10,4,2023);
    data2 = constroiData(10,3,2023);
    comparaDatas(data1,data2);
    data1 = constroiData(10,4,2023);
    data2 = constroiData(10,4,2023);
    comparaDatas(data1,data2);
    data1 = constroiData(10,4,2022);
    data2 = constroiData(10,4,2023);
    comparaDatas(data1,data2);
    data1 = constroiData(10,4,2024);
    data2 = constroiData(10,4,2023);
    comparaDatas(data1,data2);

    return 0 ;
}