// 19. WAP to print Pascal triangle.
#include <stdio.h>

void main(){
    int arr[20][20];
    int i,j,n;
    printf("Enter number of rows:");
    scanf("%d",&n);

    for(i=0; i<n; i++){
        for(j=0; j<=i; j++){
            if(j==0 || j==i){
                arr[i][j] = 1;
            }else{
                arr[i][j] = arr[i-1][j-1]+arr[i-1][j];
            }
        }
    }

    for(i=0; i<n; i++){
        for(j=0; j<=n-i-1;j++){
            printf(" ");
        }
        for(j=0; j<=i;j++){
            printf("%2d", arr[i][j]);
        }
        printf("\n");
    }
}