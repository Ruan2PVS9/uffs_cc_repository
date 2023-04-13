import java.io.IOException;
import java.util.Arrays;
import java.util.Scanner;
 
// Leia 3 valores inteiros e ordene-os em ordem crescente. No final, mostre os valores em ordem crescente, uma linha em branco e em seguida, os valores na sequência como foram lidos.


public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int num[] = new int[3]; 
        int num_sort[] = new int[3]; 
         int aux;
        for(int i=0;i < 3;i++){
            num[i]= sc.nextInt();       
            num_sort[i] = num[i];

        }
        // num_sort = num; // pelo visto dessa forma referncia entao quando muda um muda os 2 
        for(int i=0;i < 3;i++){
            
            for(int j=i+1;j < 3;j++){
                // 5 < 5 | 0,0
                // -14 < 5| 0,1
                if(num_sort[j] < num_sort[i]){
                    aux = num_sort[i];
                    num_sort[i] = num_sort[j] ;
                    num_sort[j] = aux ;
                }
                // Arrays.sort(num_sort);
            }
        }
        // System.out.println();

        for(int i=0;i < 3;i++){
            System.out.println(num_sort[i]);

        }
        System.out.println();
        for(int i=0;i < 3;i++){
            System.out.println(num[i]);

        }
        

    }
 
}