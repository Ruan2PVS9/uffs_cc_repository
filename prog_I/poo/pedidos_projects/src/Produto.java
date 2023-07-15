// package pedidos;
// package pedidos;s

class Produto {
    private int codigo;
    private double valor;
    private String desc;

    public Produto(int cod, double valor, String desc) {
        this.codigo = cod;
        this.valor = valor;
        this.desc = desc;
    }

    public double getValor() {
        return valor;
    }
}