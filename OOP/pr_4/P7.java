// 7 Write a program in Java to print all 3-digit prime numbers.[C]
public class P7 {
    boolean primeOrNot(int num){
        int factors=0;
        for(int i=1; i<=num; i++)
        {
            if (num%i==0)
            {
                factors++;
            }
        }
        if(factors <= 2){
            return true;
        }
        return false;
    }

    void print3DigitsPrimes(){
        for(int i=100; i<=999; i++)
        {
            if(primeOrNot(i))
            {
                System.out.println(i);
            }
        }
    }
    public static void main(String[] args) {
        new P7().print3DigitsPrimes();
    }
}
