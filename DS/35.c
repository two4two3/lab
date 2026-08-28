//35. Write a recursive function to find the sum of digits of a given number.

#include <stdio.h>
int sum(int n)
{
    if(n==0){
        return 0;
    }
    return n%10 + sum(n/10);
}

void main(){
    printf("Enter a number:");
    int n;
    scanf("%d",&n);
    printf("%d ", sum(n));
}