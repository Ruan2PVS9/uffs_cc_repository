import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int x[]= new int[20];
        for (int i = 0; i < x.length; i++) {
            x[i] = sc.nextInt();
        }
        int y = x.length/2;
        int l = x.length;
        int aux;
        for (int i = 0; i < y; i++) {
            l--;
            aux =x[i];
            x[i]=x[l];
            x[l]=aux;
        }        
        for (int i = 0; i < x.length; i++) {
            System.out.println("N["+i+"] = "+x[i]);
        }
    }
 
}