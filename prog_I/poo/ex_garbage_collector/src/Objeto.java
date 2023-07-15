public class Objeto {
    public static int instancias = 0;
    private int id;

    public Objeto() {
        id = instancias++;
        System.out.println("Objeto.objeto() [id=" + id + "]");
    }

    public static int getInstancias() {
        return instancias;
    }

    public int getId() {
        return id;
    }

    @Override
    protected void finalize() {
        instancias--;
        System.out.println("Objeto.objeto() [id=" + id + "]");
    }
}
