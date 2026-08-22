// 12. WAP to delete duplicate numbers from an array.
#include <stdio.h>

void shift(int *arr, int from, int n)
{
    int i;
    for (i = from; i < n; i++)
    {
        arr[i] = arr[i + 1];
    }
}

void main()
{
    int n;
    printf("Enter no of elements in array:");
    scanf("%d", &n);
    int arr[n];

    printf("Enter array elements:\n");
    int i, j;
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }

    // deleting elements
    for (i = 0; i < n; i++)
    {
        for (j = i + 1; j < n; j++)
        {
            if(arr[j] == arr[i]){
                shift(arr, j,n);
                j--;
                n--;
            }
        }
    }

    // printing elements
    for (i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
}