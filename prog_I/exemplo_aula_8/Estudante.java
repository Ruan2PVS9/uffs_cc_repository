package aplicacaouffs;

public class Estudante extends Pessoa{
    private Boolean estadoMatricula;

    public Estudante(String nome, int CPF, int matricula, String curso, Boolean estadoMatricula) {
        super(nome, CPF, matricula, curso);
        this.estadoMatricula = estadoMatricula;
    }
    
    public Boolean situacaoMatricula() {
    	return estadoMatricula;
    }
    
    public void ativo() {
    	this.estadoMatricula = true;
    }
    
    public void inativo() {
    	this.estadoMatricula = false;
    }
    
    @Override
    public void imprimir() {
    	System.out.println("Metodo Imprimir do Estudante");
    	System.out.println("Nome: "+this.getNome());
    	System.out.println("CPF: "+this.getCPF());
    	System.out.println("Matricula: "+this.getMatricula());
    	System.out.println("Curso: "+this.getCurso());
    	System.out.println("Estado de Matricula: "+this.situacaoMatricula());
    }
}
