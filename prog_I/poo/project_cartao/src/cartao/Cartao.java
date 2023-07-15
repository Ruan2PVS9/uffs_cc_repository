package cartao;

import java.util.Arrays;

public class Cartao {
    private String titular;
    private String bandeira;
    private boolean bloqueado;

    // private Operacao operacoes[];
    private Operacao operacoes[] = new Operacao[1];

    public Cartao(String titular, String bandeira) {
        this.titular = titular;
        this.bandeira = bandeira;
        this.bloqueado = true;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public String getTitular() {
        return this.titular;
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandeira) {
        this.bandeira = bandeira;
    }

    public void bloquear() {
        this.bloqueado = true;
    }

    public void desbloquear() {
        this.bloqueado = false;
    }

    public boolean estaBloqueado() {
        return this.bloqueado;
    }

    public void registrarOperacao(String tp, double val) {
        Operacao op = new Operacao(tp, val);
        if (operacoes.length == 1 && operacoes[0] == null) {
            this.operacoes[operacoes.length - 1] = op;
        } else {
            this.operacoes = Arrays.copyOf(this.operacoes, this.operacoes.length + 1);
            this.operacoes[operacoes.length - 1] = op;
        }
        ;
    }

    public void fatura() {
        for (int i = 0; i < operacoes.length; i++) {
            operacoes[i].printOp();
        }
    }
}