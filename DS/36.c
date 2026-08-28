// 36. Write a recursive function to reverse a given number
#include <stdio.h>

int rev(int number, int reverse){
    if(number==0){
        return reverse;
    }
    return rev(number/10, (reverse * 10) + number%10);
    
}

void main(){
    printf("Enter a number:");
    int n;
    scanf("%d",&n);
    printf("%d", rev(n,0));
}