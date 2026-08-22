#include <stdio.h>
// harsad number
void main(){
    int n, n_copy;
    scanf("%d", &n);
    n_copy = n;
    int sum = 0;
    while(n>0){
        int rem = n%10;
        sum += rem;
        n /= 10;
    }
    if(n_copy%sum==0){
        printf("Given number is a harsad number.\n");
        return;
    }
    printf("Given number is not a harsad number.\n");
}