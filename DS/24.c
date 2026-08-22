// 24. WAP to determine if an input character string is of the form aib
// i where i >= 1
// i.e., Number of ‘a’ should be equal to number of ‘b’.

#include <stdio.h>
#define N 100

char S[N];
int TOP = -1;

void push(char x){
    if(TOP>=N-1){
        printf("Stack Overflow!\n");
        return;
    }
    S[++TOP] = x;
}
char pop(){
    if(TOP == -1){
        printf("Stack Underflow!\n");
        return '\0';
    }
    return S[TOP--];
}

void main(){
    char input[25];
    printf("Enter ai, bi:");
    scanf("%s",input);

    int count_b = 0;
    for(int i=0; input[i] != '\0'; i++){
        if(input[i] == 'b') count_b++;
        else push(input[i]);
    }
    if(count_b == TOP+1){
        printf("Valid\n");
        return;
    }
    printf("Invalid\n");
}