//  31. WAP for evaluation of postfix Expression using Stack. || 546+*493/+*= 350
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

int evalpostfix(char postfix[]){
    for(int i=0; postfix[i]!= '\0'; i++){
        char temp = postfix[i];
        if(isdigit(temp)){
            push( temp - '0');
        }else{
            int operand2 = pop();
            int operand1 = pop();
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
    char postfix[N];
    printf("Enter a postfix exprestion:");
    scanf("%s",postfix);
    int result = evalpostfix(postfix);
    printf("Result:%d\n",result);
}