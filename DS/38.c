// 38. Write a recursive function to calculate the sum of all elements in an array.

int sum(int arr[], int n){
    if(n==1) return arr[0];
    return arr[n-1]+sum(arr, n-1);
}

int main(){
    int arr[] = {1,2,3,4,5};
    printf("%d", sum(arr, 5));
    return 0;
}