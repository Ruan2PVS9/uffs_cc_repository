/*
 * Trabalho 1 - Potenciais Comparsas
 *
 * GEN505 - Grafos - 2025/2
 *
 * Nome:      Ruan Pablo Vitkoski de Souza
 * Matricula: 2221101033
 */
#ifndef ARESTA_H

#define ARESTA_H

#include <string>

class Aresta
{
public:
    const int v1;
    const int v2;

    Aresta(int v1, int v2);

    std::string to_string();
};

#endif /* ARESTA_H */
