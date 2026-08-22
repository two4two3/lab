// 15. WAP to check whether a given number is a Happy Number or not

#include <stdio.h>
void main(){

    unsigned int n;
    scanf("%d",&n);

    int sum;

    while(n!=1){
        sum = 0;
        while(n>0){
            int rem = n%10;
            sum += rem*rem;
            n/=10;
        }
        printf("Sum:%d\n", sum);
        if(sum == 1){
            printf("Happy Number!\n");
            return;
        }
        if(sum == 4){
            printf("Unhappy Number.\n");
            return;
        }
        n=sum;
    }
    
}