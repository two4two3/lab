#include <stdio.h>
// insert and shift in array

void main(){
    int n;
    printf("Enter size of array: ");
    scanf("%d", &n);
    int arr[n];
    for(int i=0; i<n; i++){
        printf("Enter %dth element: ", i);
        scanf("%d", &arr[i]);
    }
    n++;
    int position;
    printf("Enter the position to insert new element:\n");
    scanf("%d", &position);

    int element;
    printf("Enter the element you want to insert:\n");
    scanf("%d", &element);
    int j;
    for(j=n-1;  j>position-1;  j--){
        arr[j] = arr[j-1];
    }
    arr[j]=element;
    
    for(int i=0; i<n; i++){
        printf("%d ", arr[i]);
    }

}