// The marks obtained by a student in 5 different subjects are input through the
// keyboard.
// The student gets a division as per the following rules:
// I. Percentage above or equals to 60-first division
// II. Percentage between 50 to 59-second division
// III. Percentage between 40 and 49-Third division
// IV. Percentage less than 40-fail
// Write a program to calculate the division obtained by the student.[A]

import java.util.Scanner;

public class P1 {

    void findDivision(double sum, int total){
        double avg;

        avg = sum / 5.0;
        if(avg >= 60){
            System.out.println("First Division");
        }else if(avg >= 50 && avg < 60){
            System.out.println("Second Division");
        }else if(avg >= 40 && avg < 50){
            System.out.println("Third Division");
        }else if(avg < 40){
            System.out.println("Fail");
        }

    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double sum = 0;
        for(int i=0; i<5; i++){
            System.out.print("Enter Subject "+(i+1)+"'s Marks:");
            sum += sc.nextDouble();
        }
        new P1().findDivision(sum, 5);
    }
}
