// 7 B 30. WAP to convert infix notation to prefix notation using stack
#include <stdio.h>
#include <string.h>
#define N 25
char S[N];
int TOP = -1;
char reversed[25];
char polish[N];

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
        return '0';
    }
    return S[TOP--];
}
void reverse(char *infix, char *to){
    int len = strlen(infix);
    
    int j=0;
    for(int i=len-1; i>=0;i--){
        char cur = infix[i];
        if(cur == ')') cur = '(';
        if(cur == '(') cur = ')';
        reversed[j++] = infix[i];
    }
    reversed[j] = '\0';
    // printf("REVERSED:%s\n",reversed);
}

int RANK(char x){
    if(x == '+' || x == '-' || x == '*' || x == '/' || x == '^'){
        return -1;
    }
    return 1;
}

int prec_input(char x){
    if(x == '+' || x == '-')
        return 2;
    if(x == '*' || x == '/')
        return 4;
    if( x == '^' )
        return 5;
    if( x == '(' )
        return 9;
    if( x == ')' )
        return 0;
    return 7;
}

int prec_stack(char x){
    if(x == '+' || x == '-')
        return 1;
    if(x == '*' || x == '/')
        return 3;
    if( x == '^' )
        return 6;
    if( x == '(' )
        return 0;
    return 8;
}

void revpol(char infix[]){
    push('(');
    int rank =0;
    int j = 0; // polish index
    for(int i=0; infix[i] != '\0'; i++){
        if(TOP < 0){
            printf("Invalid: top(%d)\n", TOP);
            return ;
        }
        while (prec_stack(S[TOP]) > prec_input(infix[i]))
        {
            char temp = pop();
            polish[j++] = temp;
            // printf("%c", temp);
            rank += RANK(temp);

            if(rank < 1){
                printf("Invalid: rank(%d)\n", rank);
                return;
            }
        
        }

        if(prec_stack(S[TOP]) == prec_input(infix[i]))
            pop();
        else{
            push(infix[i]);
        }
    }
    polish[j] = '\0';

    if(TOP != -1 || rank!=1){
        printf("Invalid: TOP(%d) or RANK(%d)\n", TOP, rank);
        return;
    }
    // printf("Postfix:%s\n", polish);
}


void main(){
    char infix[] = "a+b-c*d";
    reverse(infix,reversed);
    strcat(reversed, ")");
    revpol(reversed);
    reverse(polish,reversed);
    printf("POLISH:%s\n", reversed);
}