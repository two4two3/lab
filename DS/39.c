// 39. Write a recursive function to determine whether a given string is a
// palindrome.39. Write a recursive function to determine whether a given string
// is a palindrome.
#include <stdio.h>
int isPalindrome(char str[], int idx, int len) {
  if (idx >= (len / 2)) {
    return 1;
  }
  if (str[len - 1 - idx] != str[idx]) {
    return 0;
  }
  return isPalindrome(str, idx + 1, len);
}
void main() {
  char s[25];
  printf("Enter a string to check palindrome:");
  scanf("%s", s);
  int ans = isPalindrome(s, 0, 3);
  if (ans) {
    printf("%s is palindrome.\n", s);
  } else {
    printf("%s is not a palindrome.\n", s);
  }
}
