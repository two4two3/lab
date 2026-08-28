#include "stdio.h"

int d_to_b(int decimal, int bin) {
  if (decimal == 0)
    return bin;
  bin = bin * 10;
  return d_to_b(decimal / 2, bin + decimal % 2);
}
void main() {
  int decimal;
  printf("Enter a number to convert to binary:");
  scanf("%d", &decimal);
  printf("%d\n", d_to_b(decimal, 0));
}
