import java.util.Scanner;

class Account{
    int accNo;
    protected double bal; 
    static String bankName = "MyBank";

    public Account(int accNo,double bal) {
        this.accNo = 123456;
        this.bal = 10000;
    }
    public Account(){
        this.accNo = 1234567;
        this.bal = 10000;
    }
    
    void checkBalance(){
        System.out.println("Your account balance is: " + bal);
    }

    void deposit(double amount){
        this.bal += amount;
        System.out.println("deposit successful.");
    }

    void withdraw(double amount){
        if(this.bal - amount < 10000){
            System.out.println("Withdrawal denied: Minimum balance of 10000 must be maintained");
            return;
        }
        this.bal -= amount;
        System.out.println("withdraw successful.");
    }
}
class Main{
    public static void main(String[] args){
        Account a1 = new Account(1234, 10000);
        System.out.println("***Welcome to Bank Application***");
        Scanner sc = new Scanner(System.in);
        while (true){
            System.out.println("\n1. check account balance");
            System.out.println("2. deposit");
            System.out.println("3. withdraw");
            System.out.println("4. exit");
            System.out.print(">>>");
            int choice = sc.nextInt();
            switch(choice){
                case 1:
                    a1.checkBalance();
                    break;
                case 2:
                    System.out.print("Enter amount to deposit:");
                    double depositAmt = sc.nextDouble();
                    a1.deposit(depositAmt);
                    break;
                case 3:
                    System.out.print("Enter amount to withdraw:");
                    double withdrawAmt = sc.nextDouble();
                    a1.withdraw(withdrawAmt);
                    break;
                case 4:
                    sc.close();
                    System.exit(0);
                    break;
                default:
                    System.out.println("Wrong choice!");
                    break;
            }
        }
    }
}
