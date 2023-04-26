package aplicacaouffs;

public class Professor extends Pessoa{
    
    private Double salario;
    private int sala;

    public Professor(String nome, int CPF, int matricula, String curso, Double salario, int sala) {
        super(nome, CPF, matricula, curso);
        this.salario = salario;
        this.sala = sala;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public int getSala() {
        return sala;
    }

    public void setSala(int sala) {
        this.sala = sala;
    }
   
}
