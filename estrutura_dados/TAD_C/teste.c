#include <stdio.h>
int f1()
{
   printf("Um\n");
   return 0;
}
int f2()
{
   f1(); 
   return 1;
}
int main()
{
   f1(); 
   f2(); 
   return 0; 
}
