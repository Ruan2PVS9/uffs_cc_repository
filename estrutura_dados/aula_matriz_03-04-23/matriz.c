#include <stdio.h>
int main() {
  char prod[4][30]={"Televisão","Geladeira","Fogão", "Ar"};
  char meses[6][4]={"Jan","Fev","Mar","Abr","Mai","Jun"};
  int vprod[4][6]={{500,250,134,320,98,100},{},{},{}};
  int l,c;
  for (l=0;l<4;l++)
  {
    //  printf("%c%c%c%c%s:\n",32,32,32,32,prod[l]);//32(ascii) = ' '
    //  printf("%+5s:\n",prod[l]);//formatação com 5 espasço(' ')
     printf("%s:\n",prod[l]);
     for (c=0;c<6;c++)
         printf("   mes: %s qtdade: %d\n",meses[c],vprod[l][c]);
  }
  for (int i = 0; i < 6; i++){
    /* code */
  }
  

  return 0;
}
