// 4 Write a program to check that the given number is prime or not.[A]

import java.util.Scanner;

public class P4{
    void primeOrNot(int num){
        int factors=0;
        for(int i=1; i<=num; i++)
        {
            if (num%i==0)
            {
                factors++;
            }
        }
        if(factors <= 2){
            System.out.println( num +" is a prime number");
            return;
        }
        System.out.println(num + " is not a prime number");
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        System.out.print("Enter a number:");
        n = sc.nextInt();
        
        new P4().primeOrNot(n);
    }
}