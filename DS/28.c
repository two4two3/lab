// 28. Vowel Anxiety Problem
// Utkarsh has recently started taking English-language classes to improve his
// reading and writing skills. However, he is still struggling to learn English. His
// teacher gave him the following problem to improve his vowel-identification skills:
// There is a string S of length N consisting of lowercase English letters only.
// Utkarsh has to start from the first letter of the string.
// Each time he encounters a vowel; he has to reverse the entire substring that
// came before the vowel.
// Utkarsh needs help verifying his answer. Can you print the final string after
// performing all the operations for him?
// Input Format:
// • First line will contain T, number of test cases. Then T test cases follow.
// • The first line of each test case contains N, the length of the string.
// • The second line contains S, the string itself.
// Output Format:
// For each test case, output in a single line the final string after traversing S from
// left to right and performing the necessary reversals.

#include <stdio.h>
#define N 25

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

void reverse_string(){
    char temp[TOP+1];
    int i = 0;
    while(TOP != -1){
        temp[i++] = pop();
    }
    temp[i] = '\0';
    for(int i=0; temp[i] != '\0'; i++){
        push(temp[i]);
    }
}

void vovelEnxiety(char input[]){
    int i=0;
    push(input[i++]);
    while(input[i] != '\0')
    {
        if(
            input[i] == 'a'
            || input[i] == 'e'
            || input[i] == 'i'
            || input[i] == 'o'
            || input[i] == 'u'
        ){
            reverse_string();
            push(input[i++]);
        }
        else{
            push(input[i++]);
        }
    }

}

void main()
{
    // abcdefghij -> hgfeabcdij
    char input[N];
    printf("Enter input string:");
    scanf("%s", input);
    vovelEnxiety(input);
    printf("%s",S);

}