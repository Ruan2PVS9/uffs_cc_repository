public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        Produto p1 = new Produto(01, 10, "teste");
        ItemPedido ite = new ItemPedido(p1, 2);
        Pedido ped = new Pedido();

        ped.adicionaraItem(ite);
        ped.obterTotal();
        double val = ped.getValorTotal();
        System.out.printf("valor total: " + val);
    }
}
