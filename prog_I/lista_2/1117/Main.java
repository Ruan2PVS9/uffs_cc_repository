import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int vali = 0;
        float num,soma=0;
        while (vali != 2){
            num = sc.nextFloat();
            if( num >= 0 && num <= 10 ){
                soma += num;
                vali++;
            }else{
                System.out.println("nota invalida");
            }
        }
        System.out.println("media = "+ String.format("%.2f",(soma/2) ));
    }
 
}