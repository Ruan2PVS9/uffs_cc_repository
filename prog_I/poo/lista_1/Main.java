package poo.lista_1;

import poo.lista_1.exercicio5.Pessoa;

public class Main {
    // Testes exercício 5

    public static void main() {
        System.out.println("== Testes exercício 5 ==");
        Pessoa p = new Pessoa("Ruan", 20);
        p.fazAniversario();
        System.out.println("Idade após aniversário: " + p.getIdade());

    }
}
