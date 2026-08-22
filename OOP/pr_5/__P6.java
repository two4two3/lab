// Write an interactive program to print a hollow square shape. For example, if user
// enters the number 5, the shape will be as follows:[C]
// * * * * *
// *       *
// *       *
// *       *
// * * * * *

public class __P6 {
    void printPyramid(int n)
    {
        for(int i=0; i<n; i++)
        {
            for(int j=0; j<n; j++)
            {
                if(i!=0 && j!=0 ||  i!=n-1 && j!=0
                    || i!=0 && j!=n-1 ||  i!=n-1 && j!=n-1
                    || i==0 && j!=0 || i==0 && j!=n-1
                    || i==n-1 && j!=0 || i==n-1 && j!=n-1
                ){
                    System.out.print("*");
                }else{
                    System.out.println(" ");
                }
            }
            System.out.println();
        }
    }
    public static void main(String[] args) {
        new __P6().printPyramid(5);
    }
}
