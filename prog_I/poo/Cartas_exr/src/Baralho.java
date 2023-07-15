import java.util.Random;

public class Baralho {
    private Carta cartas[];
    private int pCarta;
    public static final int NUM_CARTA = 52;

    public Baralho() {
        this.cartas = new Carta[NUM_CARTA];
        this.pCarta = 0;
        criarBaralho();
        embaralhar();
    }

    private void criarBaralho() {
        String[] naipe = Carta.NAIPES;
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < Carta.LIMITE_CARTA; j++) {
                cartas[((i * (Carta.LIMITE_CARTA)) + j)] = new Carta(j + 1, naipe[i]);
            }
        }
    }

    public void embaralhar() {
        int a;
        Carta c;
        Random random = new Random();
        for (int i = 0; i < cartas.length; i++) {
            a = random.nextInt(NUM_CARTA);
            c = cartas[a];
            cartas[i] = cartas[a];
            cartas[a] = c;
        }
    }

    public Carta proxCarta() {
        Carta c = null;
        if (pCarta == NUM_CARTA) {
            System.out.println("Valor fora do limite!\n");
        } else {
            // pCarta++;
            c = cartas[(pCarta)];
            this.cartas[(pCarta)] = null;
            pCarta++;
        }
        return c;
    }

    public Carta[] darCartas(int numCartas) {

        try {
            Carta[] dist = new Carta[numCartas];
            for (int i = 0; i < numCartas; i++) {
                if (dist == null || dist[i] == null) {
                    dist[i] = proxCarta();
                }
            }
            return dist;
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Valor fora do limite!\n");
        }
        System.gc();
        return null;
    }
}
