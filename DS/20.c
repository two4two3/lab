// WAP to sort the N names in an alphabetical order.
#include <stdio.h>
#include <string.h>

void display(char names[][25], int n)
{
    for(int i=0; i<n; i++){
        printf(
            "%s ",names[i] 
        );
    }
}
void main(){
    int n;
    printf("Enter number of names:");
    scanf("%d", &n);

    char names[n][25];
    for(int i=0; i<n; i++){
        scanf("%s", names[i]);
    }

    int i,j;
    for(i=0; i<n; i++){
        for(j=0; j< n-i-1; j++){
            if( strcmp(names[j],names[j+1]) > 0 ){
                char temp[20];
                strcpy(temp, names[j]);
                strcpy(names[j], names[j+1]);
                strcpy(names[j+1], temp);
            }
        }
    }

    display(&names[0], n);
}