// Write a program to check whether a number is even or odd.[A]

import java.util.Scanner;

public class P2 {
    void oddOrEven(int n){
        if(n%2==0){
            System.out.println("Even");
            return;
        }
        System.out.println("Odd");
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a number");
        int n = sc.nextInt();
        new P2().oddOrEven(n);
    }
}
