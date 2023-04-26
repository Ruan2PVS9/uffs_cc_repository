#include <stdio.h>

void impvetasc(int *m, int t){
    if (t < 1) return;
    impvetasc(m,t-1);
    printf("\n%d",m[t-1]);
}
void impvetdesc(int *m, int t){
    if (t == 0) return;
    printf("\n%d",m[t-1]);
    impvetdesc(m,t-1);
}


int multrec (int m, int n){
   if (n==0) return 0;
   return m+multrec(m,n-1);
}   

int ex(int base, int e ){
    if (e == 1) return base;
    return base * ex(base,e -1) ;
}

int somaVetor(int *v, int t){
    printf("\nv[%d]=%d",t,v[t]);
    if (t == 0) return v[t-1];
    return v[t-1] + somaVetor(v,t-1);
}

int somaVetorV2(int *v, int t){
    if (t == 0) return v[t-1];
    return v[t-1] + somaVetor(v,t-1);
}



int main(){
    int n1 = multrec(4,3);
    int n2 = multrec(4,4);
    printf("%d | %d",n1,n2);
    printf("\n");

    int n3 = ex(2,2);
    int n4 = ex(2,4);
    printf("\n%d | %d",n3,n4);
    printf("\n");

    int v[] = {1,2,3};
    impvetasc(v,3);
    printf("\n");
    impvetdesc(v,3);
    printf("\n");

    int n5 = 0 ;
    n5 = somaVetor(v,3);
    printf("\n%d",n5);


    printf("\n");
    return 0;
}