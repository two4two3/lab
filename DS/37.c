//37. Write a recursive function to find the largest element in a given array
#include <stdio.h>

int largest(int *arr, int n)
{
    if(n==1) return arr[n-1];// 1 element
    int max = largest(arr, n-1);
    if(max < arr[n-1]){
        max = arr[n-1];
    }
    return max;
}

int main(){
    int arr[] = {1,2,3,4,5};
    printf("%d", largest(arr, 5));
    return 0;
}