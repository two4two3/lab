// WAP to count the number of digits, sum of digits and product of digits of a number.
#include <stdio.h>
void main(){
    int n, count=0, sum=0, product=1;
    printf("Enter a number: ");
    scanf("%d", &n);
    while (n>0){
        count++;
        int last_dig = n % 10;
        sum += last_dig;
        product *= last_dig;
        n /=10;
    }
    printf("Sum: %d\n", sum);
    printf("Count: %d\n", count);
    printf("Product: %d\n", product);
}