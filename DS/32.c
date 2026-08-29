//  32. WAP for evaluation of prefix Expression using Stack.
#include <ctype.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#define N 25
int S[N];
int TOP = -1;

void push(int x) {
  if (TOP >= N - 1) {
    printf("Stack Overflow!\n");
    return;
  }
  S[++TOP] = x;
}
int pop() {
  if (TOP == -1) {
    printf("Stack Underflow!\n");
    return -1;
  }
  return S[TOP--];
}

int evalprefix(char prefix[]) {
  int len = strlen(prefix);
  for (int i = len - 1; i >= 0; i--) {
    printf("Curr: %c\n", prefix[i]);
    char temp = prefix[i];
    if (isdigit(temp)) {
      printf("it is digit %c\n", temp);
      push(temp - '0');
    } else {
      int operand1 = pop();
      int operand2 = pop();
      int result;
      switch (temp) {
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
        result = pow(operand1, operand2);
        break;
      default:
        printf("Invalid operator `%c`\n", temp);
        return -1;
      }
      push(result);
    }
  }
  return pop();
}

void main() {
  char prefix[N];
  printf("Enter a prefix exprestion:");
  scanf("%s", prefix);
  int result = evalprefix(prefix);
  printf("Result:%d\n", result);
}
