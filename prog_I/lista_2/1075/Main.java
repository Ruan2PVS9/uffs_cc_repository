import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int resto;
        for (int i = 2; i < 10000; i++) {
            resto=i % n;
            if (resto == 2) {
                System.out.println(i);
            }
        }
       
    }
 
}