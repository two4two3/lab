// 22. Write a menu driven program to implement following operations on the Stack
// using an Array
// • PUSH, POP, DISPLAY
// • PEEP, CHANGE

#include <stdio.h>
#define N 100

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
        return;
    }
    return S[TOP--];
}

int peep(int pos){
    if (TOP-pos+1 > -1){
        return S[TOP-pos+1];
    }
    printf("No element at given positio!\n");
    return NULL;
}

void change(int x, int pos){
    if (TOP-pos+1 > -1){
        S[TOP-pos+1] = x;
        return;
    }
    printf("Position is invalid.\n");
    return;
}

void display(){
    if(TOP==-1){
        printf("Stack Empty.\n");
        return;
    }
    int temp = TOP;
    for(int i=TOP; temp>=0; i--){
        printf("\t\t| %d|\n", S[temp--]);
    }
}

void main(){
    char choice;
    while(1){
        printf("\n\nEnter operation to perform:\n");

        printf("1. PUSH\n2. POP\n3. DISPLAY\n4. PEEP\n5. Change\n0. Exit\n>>>");
        scanf(" %c", &choice);

        int temp;
        switch (choice)
        {
        case '0':
            printf("Exiting Program.\n");
            return;
        case '1':
            printf("Enter element:");
            scanf("%d", &temp);
            push(temp);
            break;
        case '2':
            temp = pop();
            printf("\t\tPoped Element:%d\n", temp);
            break;
        case '3':
            display();
            break;
        case '4':
            printf("Enter position:");
            scanf("%d", &temp);
            temp = peep(temp);
            printf("\t\t%d\n",temp);
            break;
        case '5':
            printf("Enter position:");
            int pos;
            scanf("%d", &pos);
            printf("Enter element:");
            scanf("%d", &temp);
            change(temp, pos);
            break;
        }
    }
}