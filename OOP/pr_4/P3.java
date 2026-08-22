// Write a program to find maximum no from given 3 no.(without if-else).[A]

import java.util.Scanner;

public class P3 {
    int findMaximumOf3(int a, int b, int c){
        int max = (a>b && a>c) 
                        ? a :
                        (b>c) ? b : c ;
        return max;
    }
    public static void main(String[] args) {
        Scanner sc =  new Scanner(System.in);
        int a, b,c ;

        System.out.println("Enter a,b,c");
        a =sc.nextInt();
        b = sc.nextInt();
        c = sc.nextInt();

        System.out.println("MAX: " +new P3().findMaximumOf3(a, b, c));
    }
}
