/*
 * Trabalho 1 - Potenciais Comparsas
 *
 * GEN505 - Grafos - 2025/2
 *
 * Nome:      Ruan Pablo Vitkoski de Souza
 * Matricula: 2221101033
 */

#include "Grafo.h"
#include <exception>
#include <stdexcept>
#include <string>
#include <iostream>
#include <queue>
#include <algorithm>

using namespace std;

Grafo::Grafo(int num_vertices)
{
    if (num_vertices <= 0)
    {
        throw(invalid_argument("Erro no construtor Grafo(int): o numero de "
                               "vertices " +
                               to_string(num_vertices) + " eh invalido!"));
    }

    num_vertices_ = num_vertices;
    num_arestas_ = 0;

    matriz_adj_.resize(num_vertices);
    for (int i = 0; i < num_vertices; i++)
    {
        matriz_adj_[i].resize(num_vertices, 0);
    }
}

int Grafo::num_vertices()
{
    return num_vertices_;
}

int Grafo::num_arestas()
{
    return num_arestas_;
}

bool Grafo::tem_aresta(Aresta e)
{
    if (matriz_adj_[e.v1][e.v2] != 0)
    {
        return true;
    }
    return false;
}

void Grafo::insere_aresta(Aresta e)
{
    try
    {
        valida_aresta(e);
    }
    catch (...)
    {
        throw_with_nested(runtime_error("Erro na operacao "
                                        "insere_aresta(Aresta): a aresta " +
                                        e.to_string() + " eh "
                                                        "invalida!"));
    }

    if (!tem_aresta(e) && (e.v1 != e.v2))
    {Uso de std::vector em vez de array em C++
        matriz_adj_[e.v1][e.v2] = 1;
        matriz_adj_[e.v2][e.v1] = 1;

        num_arestas_++;
    }
}

void Grafo::remove_aresta(Aresta e)
{
    try
    {
        valida_aresta(e);
    }
    catch (...)
    {
        throw_with_nested(runtime_error("Erro na operacao "
                                        "remove_aresta(Aresta): a aresta " +
                                        e.to_string() + " eh "
                                                        "invalida!"));
    }

    if (tem_aresta(e))
    {
        matriz_adj_[e.v1][e.v2] = 0;
        matriz_adj_[e.v2][e.v1] = 0;

        num_arestas_--;
    }
}

void Grafo::imprime()
{
    for (int v = 0; v < num_vertices_; v++)
    {
        cout << v << ":";
        for (int u = 0; u < num_vertices_; u++)
        {
            if (matriz_adj_[v][u] != 0)
            {
                cout << " " << u;
            }
        }
        cout << "\n";
    }
}

void Grafo::valida_vertice(int v)
{
    if ((v < 0) || (v >= num_vertices_))
    {
        throw out_of_range("Indice de vertice invalido: " + to_string(v));
    }
}

void Grafo::valida_aresta(Aresta e)
{
    valida_vertice(e.v1);
    valida_vertice(e.v2);
}

void Grafo::potenciais_comparsas(int o)
{
    // - ocorreu uma ligação durante a madrugada entre p1 e p2 ou // nivel 1
    // - ocorreram ligações durante a madrugada entre p1 e px e entre px e p2, sendo px uma terceira pessoa, ou // nivel 2
    // - ocorreram ligações durante a madrugada entre p1 e px, entre px e py e entre py e p2, sendo Px e py uma terceira e uma quarta pessoa. // nivel 3

    vector<int> marcado(num_vertices_, 0);
    vector<int> nivel(num_vertices_, 0);
    vector<int> comparsas;

    queue<int> fila;
    fila.push(o);
    while (!fila.empty())
    {
        int w = fila.front();
        fila.pop();
        marcado[w] = 1;
        for (int u = 0; u < num_vertices_; u++)
        {
            if (matriz_adj_[w][u] != 0)
                if (marcado[u] == 0)
                {
                    marcado[u] = 1;
                    nivel[u] = nivel[w] + 1;
                    if (nivel[u] <= 3)
                        comparsas.push_back(u);
                    fila.push(u);
                }
        }
    }
    sort(comparsas.begin(), comparsas.end());
    cout << o << ": ";
    for (int i = 0; i < comparsas.size(); i++)
    {
        cout << comparsas[i] << " ";
    }
    cout << "\n";
}
