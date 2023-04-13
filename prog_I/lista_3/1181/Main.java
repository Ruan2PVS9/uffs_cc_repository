import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        float soma = 0;
        int l = sc.nextInt();
        sc.nextLine(); //limba o baffer
        String t = sc.nextLine();
        double matrix[][] = new double[12][12];
        for (int i = 0; i < 12; i++) {
            for (int j = 0; j < 12; j++) {
                matrix[i][j] = sc.nextDouble();
            }
        }
        for (int i = 0; i < 12; i++) {
            soma +=matrix[l][i];
        }
        if (t.equals("S")){
            System.out.println(String.format("%.1f", soma));
        }else{
            System.out.println(String.format("%.1f", (soma/12)));
        }
    }
 
}