// 6 Write a program to find that given Number is palindrome or not. [B]

import java.util.Scanner;

public class P6 {
    void palindromeOrNot(int num)
    {
        int original_n = num;
        int reversed=0;
        while(num!=0)
        {
            int rem = num%10;
            reversed = reversed * 10;
            reversed += rem;
            num /= 10;
        }
        if(reversed == original_n)
        {
            System.out.println(reversed+" is a palindrome");
            return;
        }
        System.out.println(reversed+" is not a palindrome");
    }
    public static void main(String[] args) {
        Scanner sc =  new Scanner(System.in);
        System.out.print("Enter a number:");
        int num;
        num = sc.nextInt();
        new P6().palindromeOrNot(num);
    }
}
