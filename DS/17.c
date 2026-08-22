
// delete in sorted array
#include <stdio.h>
void printaArray(int *arr, int n){
    for (int i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}
void main(){
    int sortedArray[] = {1,2,3,4,5,6,7};
    int n = sizeof(sortedArray) / sizeof(sortedArray[0]);
    printaArray(sortedArray,n);

    int ele;
    printf("Enter element to delete:");
    scanf("%d", &ele);


    for(int i=0; i<n; i++){
        if(sortedArray[i] >= ele){
            sortedArray[i] = sortedArray[i+1];
        }
    }
    n--;
    
    printaArray(sortedArray, n);
    
}