#include <stdio.h>
void main(){
    // WAP to convert a decimal number to binary.
    int n;
    printf("Enter a number in decimal: ");
    scanf("%d",&n);
    int binary[32] = {};
    int i = 0;
    while(n>0){
        int rem = n%2;
        binary[i++] = rem;
        n /= 2;
    }
    for(i=i-1; i>=0;i--){
        printf("%d", binary[i]);
    }
}