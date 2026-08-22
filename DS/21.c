//  Anagram Game
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

void sort(char arr[]){
    for(int i = 0; i<25; i++){
        for(int j=0; j<24-i; j++){
            if(arr[j+1] > arr[j]){
                char temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }  
    }
}

void main()
{
    // take words input from user
    int n;
    printf("Enter number of names:");
    scanf("%d", &n);

    char words[n][25];
    for(int i=0; i<n; i++){
        scanf("%s", words[i]);
    }

    // random number
    srand(time(NULL));
    int random_num = (rand() % n);

    printf("the word is:%s\nenter its anagram:", words[random_num]);
    char anagram[25] = {0};
    scanf("%s", anagram);

    char the_word[25] = {0};
    strcpy(the_word, words[random_num]);
    char userAns[25] = {0};
    strcpy(userAns, anagram);
    sort(the_word);
    sort(userAns);
    int i;
    for(i=0; i<25; i++){
        if(the_word[i] != userAns[i]){
            printf("they are not same bro!\n");
            return;
        }
    }
    printf("You are right! %s is anagram of %s.\n", anagram, words[random_num]);

}