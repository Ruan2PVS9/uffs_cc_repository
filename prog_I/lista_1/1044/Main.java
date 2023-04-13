import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        float res,res1;
        if (a < b) {
             res = b % a;
        }else{
             res = a % b;
        }
        // (res == 0 ) ? System.out.println("Sao Multiplos") : System.out.println("Nao sao Multiplos");
        if (res == 0 ) {
            System.out.println("Sao Multiplos");
        }else{
            System.out.println("Nao sao Multiplos");
        }  
    }
 
}