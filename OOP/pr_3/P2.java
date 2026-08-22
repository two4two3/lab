import java.util.Scanner;

public class P2{
    
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        double a;
        double b;
        char op;
        System.out.println("----Enter 0 as operator to exit----");
        while(true){
            System.out.println("--------\nEnter you operands and operator:");
            System.out.print("A:");
            a = sc.nextDouble();
            System.out.print("B:");
            b = sc.nextDouble();
            System.out.print("Operator(+,-,*,/):");
            op = sc.next().charAt(0);
            if(op == '0'){
                System.out.println("Exiting Calc...");
                break;
            }
            System.out.println(new P2().calc(a, b, op));
        }
    }
    public double calc(double a,double b, char op)
    {
        switch(op){
            case '+':
                return a+b;
            case '-':
                return a-b;
            case '*':
                return a*b;
            case '/':
                if(b!=0){
                    return a/b;
                }
                System.out.println("Can't Divide by Zero");
                return 0;
            default:
                System.out.println("Invalid Operator");
                return 0;
        }
    }
}