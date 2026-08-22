#include <stdio.h>
void main(){
    // fibonacci
    int n;
    scanf("%d",&n);

    int last_1=0, last_2=1;

    for (int i = 0; i < n; i++)
    {
        printf("%d ", last_1);
        int temp = last_2;
        last_2 = last_1 + last_2;
        last_1 = temp;
    }
    

}