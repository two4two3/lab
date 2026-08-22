// 16. WAP to insert a number in an array that is already sorted in an ascending order.
#include <stdio.h>

void main(){
    int sortedArray[] = {1,2,3,4,5,6,7};
    int ele;
    printf("Enter element to insert:");
    scanf("%d", &ele);

    int n = sizeof(sortedArray) / sizeof(sortedArray[0]);

    for(int i=n++-1; i>=0 ; i--){
        if(ele > sortedArray[i] && ele >= sortedArray[i-1]){
            sortedArray[i+1] = ele;
            break;
        }else{
            sortedArray[i+1] = sortedArray[i];
        }
    }
    
    for (int i = 0; i < n; i++)
    {
        printf("%d ", sortedArray[i]);
    }
    
}