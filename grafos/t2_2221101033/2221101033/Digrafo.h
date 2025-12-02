/*
 * Trabalho 2 - Grafeira Linhas Aereas
 *
 * GEN505 - Grafos - 2025/2
 *
 * Nome:      Ruan Pablo Vitkoski de Souza  
 * Matricula: 2221101033
 */


#ifndef DIGRAFO_H

#define DIGRAFO_H

#include "Aresta.h"
#include <vector>

class Digrafo {
    public:
    /** Constroi um grafo simples que possui o numero de vertices recebido por
     *  parametro e que nao possui arestas */
    Digrafo(int num_vertices);

    int num_vertices();
    int num_arestas();
    bool tem_aresta(Aresta e);

    /** Insere uma aresta no grafo caso a aresta ainda nao exista no grafo e
     * nao seja um laco */
    void insere_aresta(Aresta e);

    /** Remove uma aresta do grafo caso a aresta exista no grafo */
    void remove_aresta(Aresta e);

    void imprime();

    void opa(int X);
    void opb(int X, int Z );

    // void Dijkstra(Digrafo G, int s,  int pai, int dp);
    std::vector<int> Dijkstra( int s);


private:
    int num_vertices_;
    int num_arestas_;
    
    std::vector<std::vector<int>> matriz_adj_;
    std::vector<std::vector<int>> matriz_adj_peso_;

    void valida_vertice(int v);
    void valida_aresta(Aresta e);


};

#endif /* DIGRAFO_H */


