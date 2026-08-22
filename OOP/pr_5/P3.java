// Write a program to print given array in reverse order.[A]

import java.util.Scanner;

public class P3 {
    void createAndCalcArray(int[] arr)
    {
        for(int i=arr.length-1; i>=0; i--)
        {
            System.out.println(arr[i]);
        }
        System.out.println();
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the size of array:");
        int n = sc.nextInt();
        
        int[] arr = new int[n];
        for(int i=0; i<n; i++)
        {
            System.out.print("Enter "+i+"th Element:");
            arr[i] = sc.nextInt();
        }
        new P3().createAndCalcArray(arr);
    }
}
