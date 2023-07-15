
public class App {
    public static void main(String[] args) throws Exception {
        CaixaDeMarcha cm = new CaixaDeMarcha(5);
        cm.engatarMarcha(2);
        cm.engatarMarcha(3);
        cm.engatarRe();
        cm.desengatarMarcha();
        cm.engatarMarcha(1);
    }
}
