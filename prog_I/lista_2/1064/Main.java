import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        float num,soma=0;
        int countPos=0;
        for (int i = 0; i < 6; i++) {
            num = sc.nextFloat();
            if (num > 0 ) {
                soma+=num;
                countPos ++;
            }
        }
        System.out.println(countPos + " valores positivos");
        System.out.println( String.format("%.1f", (soma/countPos)) );

    }
 
}