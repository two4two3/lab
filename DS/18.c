#include <stdio.h>

void printaArray(int *arr, int n){
    for (int i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

void main()
{
    int Arr1[] = {1,2,3,4,5,69};
    int nA1 = sizeof(Arr1) / sizeof(Arr1[0]);
    int Arr2[] = {12,13,14,15,16,17};
    int nA2 = sizeof(Arr2) / sizeof(Arr2[0]);

    int newArr[nA1+nA2];
    int nA3 = sizeof(newArr) / sizeof(newArr[0]);

    int i = 0, j=0, k=0;
    while(j < nA1 && k<nA2){
        if(Arr1[j] <= Arr2[k]){
            newArr[i++] = Arr1[j++];
        }else{
            newArr[i++] = Arr2[k++];
        }
    }

    while(j<nA1){
        newArr[i++] = Arr1[j++];
    }

    while(k<nA1){
        newArr[i++] = Arr2[k++];
    }
    printaArray(newArr,nA3);
}