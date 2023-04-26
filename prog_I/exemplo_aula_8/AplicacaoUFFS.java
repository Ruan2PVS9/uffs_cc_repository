package aplicacaouffs;

public class AplicacaoUFFS {

    public static void main(String[] args) {
        
    Estudante e1 = new Estudante("Joao", 1111111111, 12345, "Ciencia da Computacao", true);
    Professor p1 = new Professor("Samuel", 222222222, 54321, "Ciencia da Computacao", 33.333, 220);
    Tecnico t1 = new Tecnico("Tiago", 333333, 98765, "Todos", "Laboratorio", 11.111);
		
    p1.imprimir();
    System.out.println("\n");
    t1.imprimir();
    System.out.println("\n");
    e1.imprimir();
    }
    
}