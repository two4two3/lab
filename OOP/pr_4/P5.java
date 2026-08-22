// 5 Write a program to check whether a year is leap year or not.[B]

import java.util.Scanner;

public class P5 {
    void checkLeapOrNot(int year){
        if(year%4==0 && year%100!=0 || year%4==0 && year%400==0){
            System.out.println(year + " is a leap year");
            return;
        }
        System.out.println(year + " is not a leap year");
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int y;
        System.out.print("Enter a year to check leap or not:");
        y = sc.nextInt();
        new P5().checkLeapOrNot(y);
    }
}
