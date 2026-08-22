#include <stdio.h>

void main(){
    int digits[10] = {};
    int n;

    scanf("%d",&n);
    while (n>0)
    {
        int rem = n % 10;
        digits[rem]++;
        n /= 10;
    }
    
    for(int i=0; i<10; i++){
        if (digits[i] == 0){
            continue;
        }
        printf("%d's frequency: %d\n", i, digits[i]);
    }
}