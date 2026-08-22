#include <stdio.h>
// duck number
void main(){
    int n;
    scanf("%d", &n);
    while(n>0){
        int rem = n%10;
        if (rem==0){
            printf("Given number is a duck number.\n");
            return;
        }
        n /= 10;
    }
    printf("Given number is not a duck number.\n");
}