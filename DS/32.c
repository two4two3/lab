//  32. WAP for evaluation of prefix Expression using Stack.
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#define N 25
int S[N];
int TOP = -1;

void push(int x){
    if(TOP>=N-1){
        printf("Stack Overflow!\n");
        return;
    }
    S[++TOP] = x;
}
int pop(){
    if(TOP == -1){
        printf("Stack Underflow!\n");
        return -1;
    }
    return S[TOP--];
}

void reverseStr(char *str){
    int len = strlen(str);
    for(int i=0; i<len-1; i++){
        char temp = str[i];
        str[i] = str[len-i-1];
        str[len-i-1] = temp;
    }
}

int evalpostfix(char postfix[]){
    for(int i=0; postfix[i]!= '\0'; i++){
        char temp = postfix[i];
        if(isdigit(temp)){
            push( temp - '0');
        }else{
            int operand1 = pop();
            int operand2 = pop();
            int result;
            switch (temp)
            {
            case '+':
                result = operand1 + operand2;
                break;
            case '-':
                result = operand1 - operand2;
                break;
            case '*':
                result = operand1 * operand2;
                break;
            case '/':
                result = operand1 / operand2;
                break;
            case '^':
                result = pow(operand1,operand2);
                break;
            default:
                printf("Invalid operator `%c`\n",temp);
                return -1;
            }
            push(result);
        }
    }
    return pop();
}

void main(){
    char prefix[N];
    printf("Enter a postfix exprestion:");
    scanf("%s",prefix);
    reverseStr(prefix);
    int result = evalpostfix(prefix);
    printf("Result:%d\n",result);
}