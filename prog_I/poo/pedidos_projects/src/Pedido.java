// package pedidos;

import java.util.Arrays;

class Pedido {
    private ItemPedido itens[];
    // private ItemPedido itens[] = new ItemPedido[1];
    private double valorTotal;

    public Pedido() {
        itens = new ItemPedido[1];
    }

    public void adicionaraItem(ItemPedido item) {
        System.out.println(itens.length);
        if (itens.length == 1 && itens[0] == null)
            this.itens[itens.length - 1] = item;
        else {
            this.itens = Arrays.copyOf(this.itens, this.itens.length + 1);
            this.itens[itens.length - 1] = item;
        }
        ;
    }

    public void obterTotal() {
        double total = 0;
        for (int i = 0; i < itens.length; i++) {
            total += itens[i].getProduto().getValor() * itens[i].getQtde();
        }
        this.valorTotal = total;
    }

    public double getValorTotal() {
        return valorTotal;
    }

}