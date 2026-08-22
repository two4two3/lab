#include <stdio.h>

void main(){
    int n, result=0;
    int digits[20] = {};
    scanf("%d", &n);

    int i=0;
    while(n>0){
        digits[i] = n%10;
        n/=10;
        printf("rem:%d,i:%d \n",digits[i], i);
        i++;
    }
    // 1 2 3 4 5 6
    int temp = digits[0];
    digits[0] = digits[--i];
    digits[i] = temp;
    // 6 2 3 4 5 1
    
    for(int j=i; j>=0; j--){
        n*=10;
        printf("\narr[%d], %d", j, digits[j]);
        n += digits[j];
    }
    printf("\n%d",n);
}