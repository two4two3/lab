public class Main {
    public static void main(String[] args) {
        int i = 1;
        int j = i++ + i++ + ++i + i++ + ++i + i;
        // 23 = 1   + 2   +   4 + 4   +   6 + 6
        System.out.println(i + " " + j); // 6 23
    }
}
