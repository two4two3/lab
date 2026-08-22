// Write an interactive program to print a string entered in a pyramid form. For instance,
// the string "stream" has to be displayed as follows:[B]
// s
// st
// str
// stre
// strea
// stream


public class P5 {
    void printPyramid(String str)
    {
        for(int i=0; i<str.length(); i++)
        {
            // for(int j=0; j<i; j++)
            // {
            //     System.out.print(str.charAt(j));
            // }
            // System.out.println();
            System.out.println(str.substring(0, i+1));
            
        }
    }
    public static void main(String[] args) {
        new P5().printPyramid("string");
    }
}
