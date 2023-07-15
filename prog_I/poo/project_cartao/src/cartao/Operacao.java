package cartao;

public class Operacao {
    private String tipo;
    private double valor;

    public Operacao(String tp, double val) {
        this.tipo = tp;
        this.valor = val;
    }

    public void printOp() {
        System.out.println("Operação");
        System.out.println("    tipo: " + this.tipo);
        System.out.println("    valor: " + this.valor);
    }
}
