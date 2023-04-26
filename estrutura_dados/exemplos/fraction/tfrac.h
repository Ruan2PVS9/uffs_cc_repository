struct tfrac {
   int numerador;
   int denominador;
};

typedef struct tfrac mfrac;

// atribui os valores para um tipo mfrac
mfrac setfracRet(int, int);
// a variável mfrac é passada por endereço e atualizada na função (como o scanf)
void setfracAddress(mfrac *, int , int );
// Operações sobre o tipo mfrac
mfrac sumfrac(mfrac, mfrac);
mfrac subfrac(mfrac, mfrac);
mfrac multfrac(mfrac, mfrac);
mfrac divfrac(mfrac, mfrac);
void printfrac(mfrac);
