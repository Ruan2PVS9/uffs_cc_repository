/*
 * Trabalho 2 - Grafeira Linhas Aereas
 *
 * GEN505 - Grafos - 2025/2
 *
 * Nome:      Ruan Pablo Vitkoski de Souza  
 * Matricula: 2221101033
 */

// entrada:
// C (P > 0)  : número de cidade
// V(V >= 0) : número de voos
// I inteiro (0 <= X < P) : identificador de uma cidade
// J inteiro (0 <= X < P) : identificador de uma cidade
// K (k >= 0) :peso/custo voo
// A
// B 
// saida:
// X: possiveicomparsa

//  ex: in:
// 4 5
// 0 1 6
// 0 2 2
// 2 3 3
// 3 0 4
// 3 1 2
// 2
// A 2
// B 2 3
// ex: out
// Op. A: 2
// 0: 7
// 1: 5
// 3: 3
// Op. B: 2, 3
// 0: inalcancavel
// 1: inalcancavel
// 3: inalcancavel

#include "Aresta.h"
#include "Digrafo.h"
#include <exception>
#include <string>
#include <iostream>

using namespace std;

void print_exception(const exception &e, int level = 0)
{
    cerr << "exception: " << string(level, ' ') << e.what() << "\n";
    try
    {
        rethrow_if_nested(e);
    }
    catch (const std::exception &nested_exception)
    {
        print_exception(nested_exception, (level + 2));
    }
}

int main() {

    try {
        int C, V;
        int I,J,K;
        int O;
        char op;
        int X,Z;

        cin >> C >> V;

        Digrafo g(C);

        for (int i = 0; i < V; i++) {
            cin >> I >> J >> K;
            Aresta e(I,J,K);
            g.insere_aresta(e);
        }

        cin >> O ;

        for (int i = 0; i < O; i++) {
            cin >> op >> X >> Z;
            if (op =='A')
            {
               g.opa(X);
            }
            else if (op =='B')
            {
                g.opb(X,Z);
            }
            else
            {
                cout << "op : invalida";
            } 
        }
        
    }
    catch (const exception &err) {
        print_exception(err);
    }

    return 0;
}
