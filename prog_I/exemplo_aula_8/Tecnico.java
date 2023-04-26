package aplicacaouffs;

public class Tecnico extends Pessoa {

    private String setor;
    private Double salario;

    public Tecnico(String nome, int CPF, int matricula, String curso, String setor, Double salario) {
        super(nome, CPF, matricula, curso);
        this.setor = setor;
        this.salario = salario;
    }
    
    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }
   
}
