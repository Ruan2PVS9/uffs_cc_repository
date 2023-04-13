
import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);

        int val = sc.nextInt();
        int num=0;
        int count_100,count_50,count_20,count_10,count_5,count_2,count_1;
        count_100=count_50=count_20=count_10=count_5=count_2=count_1=0;
        int aux = val;

        do {
            if (aux >= 100) {
                count_100 = aux/100;
                num += count_100*100;
                aux = aux-count_100*100;

            }
            if (aux >= 50) {
                count_50 = aux/50;
                num += count_50*50;
                aux = aux-count_50*50;
            }
            if (aux >= 20) {
                count_20 = aux/20;
                num += count_20*20;
                aux = aux-count_20*20;
            }
            if (aux >=10) {
                count_10 = aux/10;
                num += count_10*10;
                aux = aux-count_10*10;
            }
            if (aux >= 5) {
                count_5 = aux/5;
                num += count_5*5;
                aux = aux-count_5*5;
            }
            if (aux >= 2) {
                count_2 = aux/2;
                num += count_2*2;
                aux = aux-count_2*2;
            }
            if (aux >= 1) {
                count_1 = aux/1;
                num += count_1*1;
                aux = aux-count_1*1;
            }
        } while (num != val);
        System.out.println(num +"\n"+ count_100 + " nota(s) de R$ 100,00\n"+ count_50 + " nota(s) de R$ 50,00\n"+ count_20 + " nota(s) de R$ 20,00\n"+ count_10 + " nota(s) de R$ 10,00\n"+ count_5 + " nota(s) de R$ 5,00\n"+ count_2 + " nota(s) de R$ 2,00\n"+ count_1 + " nota(s) de R$ 1,00");
    }
 
}