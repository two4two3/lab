// Write a program that prompts the user to enter three numbers. Find the largest
// number.[C]

import java.util.Scanner;


public class P5 {
     void max(int a, int b, int c){
       if(a > b && a>c){
            System.out.println(a + " is the largest");
            return;
       }else if(b>a && b>c){
            System.out.println(b + " is the largest");
            return;
       }else{
            System.out.println(c + " is the largest");
       }
     }
    public static void main(String[] args) {
       Scanner sc = new Scanner(System.in);
       int a,b,c;
       System.out.print("A=");
       a = sc.nextInt();
       System.out.print("B=");
       b = sc.nextInt();
       System.out.print("C=");
       c = sc.nextInt();
          new P5().max(a, b, c);  
    }
}
