#include <stdio.h>
#include "tfrac.h"


int mdc(int a,int b)
{
    if(b == 0) return a;
    else
    return mdc(b,a%b);
}
//
int mmc(int a,int b)
{
    int div;
    if(b == 0) return a;
    else
     div = (a*b)/(mdc(a,b));
    return (div); 
}      
//
void printfrac(mfrac f1)
{
	printf("%d/%d\n",f1.numerador,f1.denominador);
	return;
}
//
mfrac setfracRet(int num, int den)
{
	mfrac f;
	f.numerador=num;
	f.denominador=den;
	return f;
}
//
void setfracAddress(mfrac *f, int num, int den)
{
	f->numerador=num;
	f->denominador=den;
	return;
}

//
// 2/4 + 3/6 = 2*(12/4) + 3*(12/6) => 6+6= 12/12 
mfrac sumfrac(mfrac f1, mfrac f2)
{
	mfrac res;
	int m;
	m=mmc(f1.denominador,f2.denominador);
	res.numerador=f1.numerador*(m/f1.denominador)+f2.numerador*(m/f2.denominador);
	res.denominador=m;
	return res;
}
//
mfrac subfrac(mfrac f1, mfrac f2)
{
	mfrac res;
	int m;
	m=mmc(f1.denominador,f2.denominador);
	res.numerador=f1.numerador*(m/f1.denominador)-f2.numerador*(m/f2.denominador);
	res.denominador=m;
	return res;
}
//
mfrac multfrac(mfrac f1, mfrac f2)
{
	mfrac res;
	res.numerador=f1.numerador*f2.numerador;
	res.denominador=f1.denominador*f2.denominador;
	return res;
}
//
mfrac divfrac(mfrac f1, mfrac f2)
{
	mfrac res;
	res.numerador=f1.numerador*f2.denominador;
	res.denominador=f1.denominador*f2.numerador;
	return res;
}
//

