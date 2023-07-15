// Implementar uma classe Java que represente outro componente de
// um Carro, similar ao que foi feito com a máquina de vidro elétrico.
// ○ Defina pelo menos três atributos, o construtor, os métodos get e set, e alguma
// outra operação que este componente executa em um carro.

// package carro;

public class Main {

    public static void main() {
        CaixaDeMarcha cm = new CaixaDeMarcha(1);
        cm.engatarMarcha(2);
        cm.engatarMarcha(3);
        cm.engatarRe();
    }
}
