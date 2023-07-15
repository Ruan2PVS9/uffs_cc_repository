// package pedidos;

class ItemPedido {
    private Produto produto;
    private int qtde;

    public ItemPedido(Produto produto, int qtde) {
        this.produto = produto;
        this.qtde = qtde;
    }

    public Produto getProduto() {
        return produto;
    }

    public int getQtde() {
        return qtde;
    }
}