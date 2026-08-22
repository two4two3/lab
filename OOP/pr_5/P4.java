// Write a Java program to copy all the elements of an array to another array and print
// both the array elements. [B]

import java.util.Scanner;

public class P4 {
    int[] copyToAnotherArray(int[] from){
        int[] to = new int[from.length];
        for(int i=0; i<to.length;i++)
        {
            to[i] = from[i];
        }
        return to;
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
        int[] arr2 =new P4().copyToAnotherArray(arr);
        
        for(int i=0; i<n; i++)
        {
            System.out.println("new array's "+i+"th Element: "+ arr2[i]);
            
        }
    }
}
