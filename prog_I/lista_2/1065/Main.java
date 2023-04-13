import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int countPar=0,num;
        for (int i = 0; i < 5; i++) {
            num = sc.nextInt();
            if (num %2 == 0 ) {
                countPar ++;
            }
        }
        System.out.println(countPar + " valores pares");

    }
 
}