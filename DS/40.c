// 40. Write a recursive function to convert a decimal number into its binary
// equivalent.
#include "stdio.h"

int d_to_b(int decimal) {
  if (decimal == 0)
    return 0;
  return decimal % 2 + 10 * d_to_b(decimal / 2);
}
void main() {
  int decimal;
  printf("Enter a number to convert to binary:");
  scanf("%d", &decimal);
  printf("%d\n", d_to_b(decimal));
}
