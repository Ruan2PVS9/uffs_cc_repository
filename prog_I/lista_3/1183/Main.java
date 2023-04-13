import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        float soma = 0;
        String t = sc.nextLine();
        int count=0;
        double matrix[][] = new double[12][12];
        for (int i = 0; i < 12; i++) {
            for (int j = 0; j < 12; j++) {
                matrix[i][j] = sc.nextDouble();
            }
        }
        for (int i = 0; i < 12; i++) {
            for (int j = 0; j < 12; j++) {
                if (j>i) {
                    count++;
                    soma+=matrix[i][j];
                }
            }
        }
        if (t.equals("S")){
            System.out.println(String.format("%.1f", soma));
        }else{
            System.out.println(String.format("%.1f", (soma/count)));
        }
    }
 
}