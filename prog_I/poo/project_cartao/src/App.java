import cartao.*;

public class App {
    public static void main(String[] args) throws Exception {
        CartaoDebito cd = new CartaoDebito("ruan", "master", 0, 0);
        cd.depositar(200);
        cd.pagar(100);
        cd.pagar(10);
        cd.pagar(50);
        cd.fatura();
    }
}
