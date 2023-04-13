import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int x[]= new int[10];
        x[0] = sc.nextInt();
        for (int i = 1; i < x.length; i++) {
            x[i] = x[(i-1)]*2;
        }
        for (int i = 0; i < x.length; i++) {
            System.out.println("N["+ (i) +"] = "+x[i]);
        }        
    }
 
}