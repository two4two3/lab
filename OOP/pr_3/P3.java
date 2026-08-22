import java.util.Scanner;

public class P3{
    double areaOfRect(double l, double w){
        return l*w;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double l, w;
        System.out.println("Enter l=0 and b=0 to exit");
        while (true) {
            System.out.print("**********\nEnter length:");
            l = sc.nextDouble();
            System.out.print("Enter width:");
            w = sc.nextDouble();
            if(l==0 && w==0)
                break;
            System.out.println("Area: "+new P3().areaOfRect(l, w)); 
        }
        System.out.println("Exiting program...");
    }
}