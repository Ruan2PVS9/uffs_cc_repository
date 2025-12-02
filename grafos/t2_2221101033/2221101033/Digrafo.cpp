/*
 * Trabalho 2 - Grafeira Linhas Aereas
 *
 * GEN505 - Grafos - 2025/2
 *
 * Nome:      Ruan Pablo Vitkoski de Souza  
 * Matricula: 2221101033
 */


#include "Digrafo.h"
#include "Filapri_min.h"
#include <exception>
#include <stdexcept>
#include <string>
#include <iostream>
#include <vector>

#define INF 1000000

using namespace std;

Digrafo::Digrafo(int num_vertices) {
    if (num_vertices <= 0) {
        throw(invalid_argument("Erro no construtor Digrafo(int): o numero de "
            "vertices " + to_string(num_vertices) + " eh invalido!"));
    }

    num_vertices_ = num_vertices;
    num_arestas_ = 0;

    matriz_adj_.resize(num_vertices);
    for (int i = 0; i < num_vertices; i++) {
        matriz_adj_[i].resize(num_vertices, 0);
    }
    matriz_adj_peso_.resize(num_vertices);
    for (int i = 0; i < num_vertices; i++) {
        matriz_adj_peso_[i].resize(num_vertices, 0);
    }
}
int Digrafo::num_vertices() {
    return num_vertices_;
}

int Digrafo::num_arestas() {
    return num_arestas_;
}

bool Digrafo::tem_aresta(Aresta e) {
    if (matriz_adj_[e.v1][e.v2] != 0) {
        return true;
    }
    return false;
}


void Digrafo::imprime() {
    for (int v = 0; v < num_vertices_; v++) {
        cout << v << ":";
        for (int u = 0; u < num_vertices_; u++) {
            if (matriz_adj_[v][u] != 0) {
                cout << " " << u;
            }
        }
        cout << "\n";
    }
}

void Digrafo::valida_vertice(int v) {
    if ((v < 0) || (v >= num_vertices_)) {
        throw out_of_range("Indice de vertice invalido: " + to_string(v));
    }
}


void Digrafo::valida_aresta(Aresta e) {
    valida_vertice(e.v1);
    valida_vertice(e.v2);
}

void Digrafo::insere_aresta(Aresta e) {
    try {
        valida_aresta(e);
    } catch (...) {
        throw_with_nested(runtime_error("Erro na operacao "
            "insere_aresta(Aresta): a aresta " + e.to_string() + " eh "
            "invalida!"));
    }

    if (!tem_aresta(e) && (e.v1 != e.v2)) {
        matriz_adj_[e.v1][e.v2] = 1;
        matriz_adj_peso_[e.v1][e.v2] = e.p;
        num_arestas_++;
    }
}

void Digrafo::remove_aresta(Aresta e) {
    try {
        valida_aresta(e);
    } catch (...) {
        throw_with_nested(runtime_error("Erro na operacao "
            "remove_aresta(Aresta): a aresta " + e.to_string() + " eh "
            "invalida!"));
    }

    if (tem_aresta(e)) {
        matriz_adj_[e.v1][e.v2] = 0;
        matriz_adj_peso_[e.v1][e.v2] = 0;
        num_arestas_--;
    }
}




    void Digrafo::opa(int X){
        cout << "Op. A: " << X << "\n";
        vector<int> dp = Dijkstra(X);
        for (size_t i = 0; i < num_vertices_; i++)
        {
            cout << i << ": " << dp[i] <<"\n";
        }
        
        
    }
    void Digrafo::opb(int X, int Z ){

    }
// Dijkstra(G, s, pai, dp)
// 1. Para cada vértice w de G:
//  2. dp[w] = ∞
//  3. pai[w] = -1
// 4. dp[s] = 0
// 5. Crie uma fila de prioridade Q com todos os vértices de G e
//  com a prioridade de cada vértice w sendo dp[w]
// 6. Enquanto Q não está vazia:
//  7. Remova o item de menor prioridade de Q; seja u o item removido
//  8. Se dp[u] != ∞:
//      9. Para cada vizinho de saída v de u em G:
//          10. Se dp[v] > dp[u] + p(uv): // p(uv) é o peso da aresta uv
//          11. dp[v] = dp[u] + p(uv)
//          12. pai[v] = u
//          13. Altere a prioridade de v em Q para (o novo valor de) dp[v}
   vector<int> Digrafo::Dijkstra(int s){
        vector<int> pai(num_vertices_, -1);
        vector<int> dp(num_vertices_, INF);
        dp[s] = 0;
        Filapri_min<int> Q(num_vertices_);
        for (size_t i = 0; i < num_vertices_; i++)
        {
            Q.insere(i, dp[i]);
        }
        // 6. Enquanto Q não está vazia:
        while(Q.vazia()){
            int u = Q.remove().first;
            // 8. Se dp[u] != ∞:
            if (dp[u] != INF) {
                // 9. Para cada vizinho de saída v de u em G:
                for (size_t v = 0; v < num_vertices_; v++)
                {
                    if (matriz_adj_[u][v] != 0) {
                    // 10. Se dp[v] > dp[u] + p(uv): // p(uv) é o peso da aresta uv
                        if (dp[v] > dp[u] + matriz_adj_peso_[u][v] ){
//          11. dp[v] = dp[u] + p(uv)
                            dp[v] = dp[u]+ matriz_adj_peso_[u][v];
//          12. pai[v] = u
                            pai[v] = u ;
//          13. Altere a prioridade de v em Q para (o novo valor de) dp[v}
                            Q.diminui_prio(v, dp[v]);
                        }
                    }                
                }
            }
        }
        return dp;
    }
