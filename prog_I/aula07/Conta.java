package aula07;

public class Conta {
    
    private int numero;
    
    private double saldo;
    
    private double limite;

    public Conta(int numero) {
        this.numero = numero;
        this.saldo = 0;
        this.limite = 1000;
    }
    
    public Conta(int numero, double saldo, double limite) {
        this.numero = numero;
        this.saldo = saldo;
        this.limite = limite;
    }
    
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public double getLimite() {
        return limite;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }
    
    
    
    public void saca(double valor) {
        
        if (saldo >= valor) {        
            this.saldo -= valor;        
        } else {
            System.out.println("Saldo insuficiente! Transação abortada!");
        }
    }
    
    public void deposita(double valor) {
        this.saldo += valor;
    }

    @Override
    public String toString() {
        return "Conta{" + "numero=" + numero + ", saldo=" + saldo + ", limite=" + limite + '}';
    }
    
    
    
}
