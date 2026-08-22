// 2 Write a program that creates and initializes a four integer element array. Calculate and
// display the average of its values.[A]

import java.util.Scanner;

public class P2 {
    void createAndCalcArray()
    {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[4];
        int n = arr.length, sum=0;
        System.out.println("Enter elements one by one:");
        for(int i=0; i<n; i++)
        {
            arr[i] = sc.nextInt();
        }
        for(int i=0; i<n; i++)
        {
            sum += arr[i];
        }
        System.out.println("Average is: " + (sum/(double)n));
    }
    public static void main(String[] args) {
        new P2().createAndCalcArray();
    }
}
