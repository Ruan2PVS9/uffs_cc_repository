public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        Baralho baralho = new Baralho();
        baralho.embaralhar();
        Carta[] cartas = baralho.darCartas(9);
        System.out.printf("Cartas recebidas: \n");
        for (int i = 0; i < cartas.length; i++) {
            System.out.println("    " + (i + 1) + cartas[i]);
        }
        Carta[] cartas1 = baralho.darCartas(13);
        System.out.printf("Cartas recebidas: \n");
        for (int i = 0; i < cartas1.length; i++) {
            System.out.println("    " + (i + 1) + cartas1[i]);
        }
        Carta[] cartas2 = baralho.darCartas(52);
        System.out.printf("Cartas recebidas: \n");
        for (int i = 0; i < cartas2.length; i++) {
            System.out.println("    " + (i + 1) + cartas2[i]);
        }
    }
}
