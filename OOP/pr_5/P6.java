// Write an interactive program to print a hollow square shape. For example, if user
// enters the number 5, the shape will be as follows:[C]
// * * * * *
// *       *
// *       *
// *       *
// * * * * *

public class P6 {
    void printPyramid(int n)
    {
        for(int i=0; i<n; i++){
            System.out.print("*");
        }
        System.out.println();
        for(int i=1; i<n-1; i++){
            for(int j=0; j<n; j++){
                if(j==0 || j==n-1){
                    System.out.print("*");
                }else{
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
        for(int i=0; i<n; i++){
            System.out.print("*");
        }
        System.out.println();
    }
    public static void main(String[] args) {
        new P6().printPyramid(5);
    }
}
