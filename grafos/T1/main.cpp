/*
 * Trabalho 1 - Potenciais Comparsas
 *
 * GEN505 - Grafos - 2025/2
 *
 * Nome:      Ruan Pablo Vitkoski de Souza
 * Matricula: 2221101033
 */

//   são potenciais comparsas se
// - ocorreu uma ligação durante a madrugada entre p1 e p2 ou
// - ocorreram ligações durante a madrugada entre p1 e px e entre px e p2, sendo px uma terceira pessoa, ou
// - ocorreram ligações durante a madrugada entre p1 e px, entre px e py e entre py e p2, sendo Px e py uma terceira e uma quarta pessoa.

// entrada:
// P (P > 0)  : número de pessoas
// L (L >= 0) : número de ligações telefônicas
// X inteiro (0 <= X < P) : identificador de uma pessoa
// X inteiro (0 <= X < P) : identificador de uma pessoa
// T (T >= 0) : hora do dia em que a ligação foi realizada, M : manhã, T : tarde, N : noite, W : madrugada
// O int (O > 0) : qtd suspeito de comparsas
// X inteiro (0 <= X < P) : identificador de uma pessoa suspeita
// saida:
// X: possiveicomparsa

//  ex: in:
// 6 9
// 2 5 W
// 4 W
// 3 5 W
// 4 1 N
// 1 3 W
// 0 5 W
// 0 3 N
// 1 4 T
// 2 4 W
// 2
// 4
// 2
// out:
// 4:0235
// 2:01345

#include "Aresta.h"
#include "Grafo.h"
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

int main()
{
    int P, L;
    try
    {
        cin >> P >> L;
        Grafo g(P);
        for (int i = 0; i < L; i++)
        {
            int X, Y;
            char T;
            cin >> X >> Y >> T;
            if (T == 'W')
            {
                Aresta e(X, Y);
                g.insere_aresta(e);
            }
        }
        int O;
        cin >> O;
        vector<int> suspeitos(O);
        for (int i = 0; i < O; i++)
        {
            cin >> suspeitos[i];
        }
        for (int i = 0; i < O; i++)
        {
            g.potenciais_comparsas(suspeitos[i]);
        }
    }
    catch (const exception &e)
    {
        print_exception(e);
    }

    return 0;
}
