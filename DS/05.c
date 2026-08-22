
#include <stdio.h>
void main(){
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);

    int smallest=n%10, largest=0;
    while(n>0){
        int rem = n % 10;
        if(rem<smallest){
            smallest = rem;
        }
        if(rem> largest){
            largest = rem;
        }
        n /= 10;
    }
    printf("Largest digit: %d\n", largest);
    printf("Smallest digit: %d\n", smallest);
}