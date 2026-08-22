// WAP to delete a number from a given location in an array.
#include <stdio.h>
void main()
{
    int n;
    printf("Enter no of elements in array:");
    scanf("%d", &n);
    int arr[n];

    printf("Enter array elements:\n");
    int i;
    for(i = 0; i<n; i++){
        scanf("%d", &arr[i]);
    }

    int pos;
    printf("Enter element position to delete:");
    scanf("%d", &pos);
    n--;

    // shifting elements
    for(i=pos-1; i<n; i++){
        arr[i] = arr[i+1];
    }

    // printing elements
    for(i=0; i<n; i++){
        printf("%d ", arr[i]);
    }
}