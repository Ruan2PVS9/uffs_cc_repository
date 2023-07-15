package exemplo_aula_8.aplicacaouffs;

public class Pessoa {
    private String nome;
    private int CPF;
    private int matricula;
    private String curso;

    public Pessoa(String nome, int CPF, int matricula, String curso) {
        this.nome = nome;
        this.CPF = CPF;
        this.matricula = matricula;
        this.curso = curso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCPF() {
        return CPF;
    }

    public void setCPF(int CPF) {
        this.CPF = CPF;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public void imprimir() {
        System.out.println("Metodo Imprimir Pessoa");
        System.out.println("Nome: " + this.getNome());
        System.out.println("CPF: " + this.getCPF());
    }

}
