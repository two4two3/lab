// 26. Removing starts from a string Problem
#include <stdio.h>
#define N 10

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
        return -1;
    }
    return S[TOP--];
}

void removeStart(char *str){
    for(int i=0; str[i] != '\0'; i++){
        if(str[i] == '*'){
            pop();
        }
        else{
            push(str[i]);
        }
    }
    
    for(int i=0; i<=TOP; i++){
        printf("%c",S[i]);
    }
    
}

void main(){
    char str[25];
    printf("Enter string:");
    scanf("%s", str);
    removeStart(str);
}