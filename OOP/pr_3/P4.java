import java.util.Scanner;

public class P4 {
    static double fahrToCelc(double fahr){
        return (fahr - 32) * (5 / 9.0);
    }
    static double celcToFahr(double cels){
        return (cels  * (9/5.0)) + 32;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double f, c;
        System.out.print("Enter celsius to convert to fahrenheit:");
        c = sc.nextDouble();
        System.out.println(c + " to fahrenheit: " + celcToFahr(c));

        System.out.print("Enter fahrenheit to convert to celsius:");
        f = sc.nextDouble();
        System.out.println(f + " to celsius: " + fahrToCelc(f));
    }
    
}