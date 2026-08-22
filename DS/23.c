// 23. How stack can be used to recognize strings aca, bcb, abcba, abbcbba? WAP to
//    solve the above problem.

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
    char expression[25]; 
    scanf("%s", expression);
    int i;
    for( i = 0; expression[i]!='c'; i++)
    {
        push(expression[i]);
    }
    i++;

    for(i=i; expression[i]!='\0'; i++){
        char popped = pop();
        if(popped == '\0'){
            printf("Invalid!\n");
            return;
        }
        if(expression[i] != popped){
            printf("Invalid!\n");
            return;
        }
    }
    if(TOP!= -1){
        printf("Invalid!\n");
        return;
    }
    printf("Valid!\n");
    
}