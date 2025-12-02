/*
 * Trabalho 2 - Grafeira Linhas Aereas
 *
 * GEN505 - Grafos - 2025/2
 *
 * Nome:      Ruan Pablo Vitkoski de Souza  
 * Matricula: 2221101033
 */


#include "Aresta.h"
#include <string>

using namespace std;

Aresta::Aresta(int v1, int v2,int p) : v1(v1), v2(v2), p(p) {
}

string Aresta::to_string() {
    return std::to_string(v1) + " " + std::to_string(v2) + " " + std::to_string(p);
}

