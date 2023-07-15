// package carros.src;

public class CaixaDeMarcha {
    private int numeroDeMarchas;
    private int marchaAtual;
    private boolean marchaRe;

    public CaixaDeMarcha(int numeroDeMarchas) {
        this.numeroDeMarchas = numeroDeMarchas;
        this.marchaAtual = 0;
        this.marchaRe = false;
    }

    public void engatarMarcha(int marcha) {
        if (marcha >= -1 && marcha <= numeroDeMarchas) {
            marchaAtual = marcha;
            marchaRe = false;
            System.out.println("Marcha " + marcha + " engatada.");
        } else {
            System.out.println("Marcha inválida.");
        }
    }

    public void engatarRe() {
        marchaAtual = -1;
        marchaRe = true;
        System.out.println("Marcha Ré engatada.");
    }

    public void desengatarMarcha() {
        marchaAtual = 0;
        marchaRe = false;
        System.out.println("Marcha desengatada.");
    }

    public int getNumeroDeMarchas() {
        return numeroDeMarchas;
    }

    public void setNumeroDeMarchas(int numeroDeMarchas) {
        this.numeroDeMarchas = numeroDeMarchas;
    }

    public int getMarchaAtual() {
        return marchaAtual;
    }

    public void setMarchaAtual(int marchaAtual) {
        this.marchaAtual = marchaAtual;
    }

    public boolean getMarchaRe() {
        return marchaRe;
    }

    public void setMarchaRe(boolean marchaRe) {
        this.marchaRe = marchaRe;
    }
}