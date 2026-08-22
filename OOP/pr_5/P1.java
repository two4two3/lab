// 1 Write a Java program to sum values of an array.[A]

import java.util.Scanner;

public class P1 {
    int sumOfArrayEle(int[] arr)
    {
        int sum=0;
        for(int i=0; i<arr.length; i++)
        {
            sum += arr[i];
        }
        return sum;
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
        
        System.out.println("Sum of values: "+ new P1().sumOfArrayEle(arr));        
    }
}
