//14. WAP to check whether two numbers are co-prime or not.

int find_gcd(int a, int b){
  int i;
  int gcd = 1;
  int min = a<b ? a : b;
  for(i=min; i>0; i--){
    if (a%i==0 && b%i==0){
      gcd = i;
      break;
    }
  }
  return gcd;
}

void main(){
  int n1, n2;
  printf("Enter two numbers:");
  scanf("%d %d", &n1, &n2);
  
  if (find_gcd(n1,n2) == 1){
    printf("%d and %d are co-prime numbers.\n", n1, n2);
    return;
  }

  printf("%d and %d are not co-prime numbers.\n", n1, n2);

}