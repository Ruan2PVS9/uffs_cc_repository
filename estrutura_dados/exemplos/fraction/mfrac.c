#include <stdio.h>
#include "tfrac.h"

int main()
{
   mfrac f1, f2;
   int n1,n2,d1,d2;
   printf("Digite duas frações: \n");
   scanf("%d",&n1);
   scanf("%d",&d1);
   scanf("%d",&n2);
   scanf("%d",&d2);
   f1=setfracRet(n1,d1);
   f2=setfracRet(n2,d2);
   printfrac(f1);
   printfrac(f2);
   f2=sumfrac(f1,f2);
   printfrac(f2);
   setfracAddress(&f2,n2,d2);
   f2=subfrac(f1,f2);
   printfrac(f2);
   setfracAddress(&f2,n2,d2);
   printfrac(multfrac(f1,f2));
   printfrac(divfrac(f1,f2));
   return 0;
}
/*
 How to compile and execute (Linux)
 gcc mfrac.c tfrac.c -o frac
 ./frac
 3
 5
 6
 8
 3/5
 6/8
 54/40
 -6/40
 18/40
 24/30
*/ 
