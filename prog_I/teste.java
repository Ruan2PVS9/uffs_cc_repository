import java.io.IOException;
import java.util.Scanner;


class Teste{

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.println("ola mundo!");
        // int x = System.in.read();
        double matrix[][] = new double[12][12];

        for (int i = 0; i < 12; i++) {
            for (int j = 0; j < 12; j++) {
                matrix[i][j] = sc.nextDouble();
            }
        }
    }

}

// import java.io.IOException;
// import java.util.Scanner;
 

// public class Main {
 
//     public static void main(String[] args) throws IOException {
//         Scanner sc = new Scanner(System.in);
       
//     }
 
// }