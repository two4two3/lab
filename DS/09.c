#include <stdio.h>
// strong number
int facto(int n){
    int ans=1;
    for (int i = 1; i <= n; i++)
    {
        ans *= i;
    }
    return ans;   
}

void main(){
    int n, n_copy;
    scanf("%d", &n);
    n_copy = n;
    int sum_of_facto = 0;
    while(n>0){
        int rem = n%10;
        int rem_facto = facto(rem);
        sum_of_facto += rem_facto;
        n /= 10;
    }
    if(sum_of_facto==n_copy){
        printf("Given number is a harsad number.\n");
        return;
    }
    printf("Given number is not a harsad number.\n");
}