// 34. Write a recursive function to generate the nth Fibonacci number.
#include <stdio.h>
int fibbo(int n)
{
    if(n==0){
        return 0;
    }
    if(n==1){
        return 1;
    }
    return fibbo(n-1) + fibbo(n-2);
}

void main(){
    printf("Enter a number:");
    int n;
    scanf("%d",&n);
    printf("%d ", fibbo(n));
    // for(int i=0; i<n; i++){
    //     printf("%d ", fibbo(i));
    // }
}