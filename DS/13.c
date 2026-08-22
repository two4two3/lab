// 12. WAP to delete duplicate numbers from an array.
#include <stdio.h>

void main()
{
    int n1, n2;
    // ARRY ONE
    printf("Enter no of elements in array 1:");
    scanf("%d", &n1);
    int arr1[n1];

    printf("Enter array 1 elements:\n");
    int i, j;
    for (i = 0; i < n1; i++)
    {
        scanf("%d", &arr1[i]);
    }
    // ARRY TWO
    printf("Enter no of elements in array 2:");
    scanf("%d", &n2);
    int arr2[n2];

    printf("Enter array 2 elements:\n");
    for (i = 0; i < n2; i++)
    {
        scanf("%d", &arr2[i]);
    }


    // new Array with size of n1 + n2
    int newArr[n1+n2];
    for (i = 0; i < (n1+n2); i++)
    {
        if(i < n1){
            newArr[i] = arr1[i];
        }
        else{
            newArr[i] = arr2[i%n2];
           
        }
    }

    // printing elements
    for (i = 0; i < (n1+n2) ; i++)
    {
        printf("%d ", newArr[i]);
    }
}