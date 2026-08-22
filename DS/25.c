// 25. Valid Parenthesis Problem
#include <stdio.h>
#define N 20
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


int isBalanced(char str[])
{
    for (int i = 0; str[i] != '\0'; i++)
    {
        if (str[i] == '{' || str[i] == '[' || str[i] == '(')
        {
            push(str[i]);
        }
        else if (str[i] == '}' || str[i] == ']' || str[i] == ')')
        {
            char temp = pop();

            if(temp == '{' && str[i]=='}'){
                continue;
            }
            if(temp == '[' && str[i]==']'){
                continue;
            }
            if(temp == '(' && str[i]==')'){
                continue;
            }
            else{
                return 0;
            }
        }
    }
    return 1;
}

void main()
{
    int testcaseN;
    printf("Enter number of cases:");
    scanf("%d", &testcaseN);

    for(int i=0; i<testcaseN; i++){
        char temp[20];
        scanf("%s",temp);
        printf("%d\n", isBalanced(temp));
    }

}