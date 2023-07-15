package poo.lista_1.exercicio4;

public class Data {
    private int dia;
    private int mes;
    private int ano;

    public Data(int d, int m, int a) {
        this.dia = d;
        this.mes = m;
        this.ano = a;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int d) {
        this.dia = d;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int m) {
        this.mes = m;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int a) {
        this.ano = a;
    }

    public String getDataBr() {
        String data = String.format("%02d-%02d-%d", this.dia, this.mes, this.ano);

        return data;
    }

    public String getDataEn() {
        String data = String.format("%02d-%02d-%d", this.mes, this.dia, this.ano);

        return data;
    }
}
