public class Carta {
    private int valor;
    private String naipe;

    public static final String[] NAIPES = { "Espada", "Copas", "Ouros", "Paus" };
    public static final int LIMITE_CARTA = 13;

    public Carta(int valor, String naipe) {
        this.valor = valor;
        this.naipe = naipe;
    }

    @Override
    public String toString() {
        if (valor > 10) {
            String[] a = { "Valete", "Rainha", "Rei" };
            int index = (valor - 11);
            return "Carta " + a[index] + " de " + naipe;
        } else {
            return "Carta " + valor + " de " + naipe;
        }
    }
}
