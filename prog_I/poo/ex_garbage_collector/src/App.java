public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        Objeto obj1 = new Objeto();
        System.out.println("instancias:" + Objeto.getInstancias());

        for (int i = 0; i < 10; i++) {
            Objeto obj = new Objeto();
            System.out.println("criei " + i);
        }
        System.out.println("instancias:" + Objeto.getInstancias());
        System.gc(); // aciona garbage collector
        // gc não para aplicação
        System.out.println("instancias:" + Objeto.getInstancias());
        // System.gc(); // aciona garbage collector
        System.out.println("instancias:" + Objeto.getInstancias());
        System.out.println("instancias:" + Objeto.getInstancias());
        System.out.println("instancias:" + Objeto.getInstancias());
        System.out.println("instancias:" + Objeto.getInstancias());
        System.out.println("instancias:" + Objeto.getInstancias());

    }
}
