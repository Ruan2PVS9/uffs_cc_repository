import java.io.IOException;
import java.util.Scanner;
 

public class Main {
 
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        String ope1,ope2,ope3;
        ope1 = sc.nextLine();
        ope2 = sc.nextLine();
        ope3 = sc.nextLine();

        if (ope1.equals("vertebrado")) {
            if (ope2.equals("ave")) {
                if (ope3.equals("carnivoro")) {
                    System.out.println("aguia");
                } else if (ope3.equals("onivoro")){
                    System.out.println("pomba");
                }
            } else if (ope2.equals("mamifero")){
                if (ope3.equals("herbivoro")) {
                    System.out.println("vaca");
                } else if (ope3.equals("onivoro")){
                    System.out.println("homem");
                }
            }
        }else if(ope1.equals("invertebrado")){
            if (ope2.equals("inseto")) {
                if (ope3.equals("hematofago")) {
                    System.out.println("pulga");
                } else if (ope3.equals("herbivoro")){
                    System.out.println("lagarta");
                }
            } else if (ope2.equals("anelideo")){
                if (ope3.equals("hematofago")) {
                    System.out.println("sanguessuga");
                } else if (ope3.equals("onivoro")){
                    System.out.println("minhoca");
                }
            }
        }
       
    }
 
}