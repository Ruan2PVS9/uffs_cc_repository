import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();
        int horas = sc.nextInt();
        double val_horas = sc.nextDouble();
        System.out.println("NUMBER = "+ num +"\nSALARY = U$ "+ String.format("%.2f", (horas*val_horas)));
       
    }
 
}