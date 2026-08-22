# 1
``` java
public class Main {
    public static void main(String[] args) {
        int x = 1;
        x++; //2
        ++x; //3
        x--; //2
        System.out.println(x);
    }
}
```
o/p:
```bash
2
```

# 2
``` java
public class Main {
    public static void main(String[] args) {
        int i = 11;
        i = (i++) + (++i);
        //  11   +   13
        System.out.println(i);
    }
}
```
o/p:
```bash
2
```

# 3
``` java
public class Main {
    public static void main(String[] args) {
        int a=11, b=22, c;
        c = a + b  + a++ + b++ + ++a + ++b;
        //  11+ 22 + 11  + 22  + 13  + 24
        System.out.println(c);
    }
}
```
o/p:
```bash
103
```

# 4
``` java
public class Main {
    public static void main(String[] args) {
        int i=0;
        i = i++ - --i + ++i - i--;
        //  0   -   0 +   1 - 1
        System.out.println(i);
    }
}
```
o/p:
```bash
0
```

# 5
``` java
public class Main {
    public static void main(String[] args) {
        int i=1, j=2, k=3;
        int m = i-- - j-- - k--;
        //  -4= 1   - 2   - 3
        System.out.println("i="+i); // 0
        System.out.println("j="+j); // 1
        System.out.println("k="+k); // 2
        System.out.println("m="+m); // -4
    }
}
```
o/p:
```bash
i=0
j=1
k=2
m=-4
```

# 6
``` java
public class Main {
    public static void main(String[] args) {
        int a=1, b=2;
        System.out.println(--b - ++a + ++b - --a);
                        //   1 -   2 +   2 -   1
    }
}
```
o/p:
```bash
0
```

# 7
``` java
public class Main {
    public static void main(String[] args) {
        int i=19, j=29, k;
        k = i-- - i++ + --j - ++j + --i - j-- + ++i - j++;
    //-20 = 19  - 18  +  28 -  29 +  18 - 29  +  19 - 28
        System.out.println("i="+i); // 19
        System.out.println("j="+j); // 29
        System.out.println("k="+k); // -20
    }
}
```
o/p:
```bash
i=19
j=29
k=-20
```

# 8
``` java
public class Main {
    public static void main(String[] args) {
        int a=1;
        a = a++ + ++a * --a - a--;
    //  5 = 1   +   3 *   2 - 2
        System.out.println(a);
    }
}
```
o/p:
```bash
5
```

# 9
``` java
public class Main {
    public static void main(String[] args) {
        int x = 3;
        int y = ++x + x++ + ++x;
        // 14 =   4 + 4   +   6
        System.out.println(y);
    }
}
```
o/p:
```bash
14
```

# 10
``` java
public class Main {
    public static void main(String[] args) {
        int a = 5;
        int b = a-- - --a;
        //  2 = 5   -   3
        System.out.println(b);
    }
}
```
o/p:
```bash
2
```

# 11
``` java
public class Main {
    public static void main(String[] args) {
        int x = 2;
        int y = x++ + x++ + x;
        //  9 = 2   + 3   + 4
        System.out.println(y);
    }
}
```
o/p:
```bash
9
```

# 12
``` java
public class Main {
    public static void main(String[] args) {
        int a = 2;
        int b = 3;
        int c = a++ + b++ + ++a + ++b;
        // 14 = 2   + 3   +   4 +   5
        System.out.println(c);
    }
}
```
o/p:
```bash
14
```

# 13
``` java
public class Main {
    public static void main(String[] args) {
        int i = 10;
        System.out.println(--i + i-- + i++);
        //                   9 + 9   + 8
    }
}
```
o/p:
```bash
26
```

# 14
``` java
public class Main {
    public static void main(String[] args) {
        int i = 0;
        i = i++ - --i + ++i - i--;
    //  0 = 0   -   0 +   1 - 1
        System.out.println(i);
    }
}
```
o/p:
```bash
0
```

# 15
``` java
public class Main {
    public static void main(String[] args) {
        int i = 3;
        int result = i++ * ++i * i--;
        //      75 = 3   *   5 * 5
        System.out.println(result);
    }
}
```
o/p:
```bash
75
```

# 16
``` java
public class Main {
    public static void main(String[] args) {
        int x = 1;
        int y = 1;
        int z = x++ + ++y + x++ + y++ + ++x + ++y;
        // 15 = 1   +   2 + 2   + 2   +   4 +   4
        System.out.println(x + " " + y + " " + z); // 4,4,15
    }
}
```
o/p:
```bash
4 4 15
```

# 17
``` java
public class Main {
    public static void main(String[] args) {
        int x = 1;
        int y = x++ + ++x + x-- + --x;
        //  8 = 1   +   3 + 3   +   1
        System.out.println(x + " " + y); // 1 8
    }
}
```
o/p:
```bash
1 8
```

# 18
``` java
public class Main {
    public static void main(String[] args) {
        int x = 10;
        x = x++ + x-- - x++ + x;
    // 22 = 10  + 11  - 10  + 11
        System.out.println(x);
    }
}
```
o/p:
```bash
22
```

# 19
``` java
public class Main {
    public static void main(String[] args) {
        int a = 5;
        int b = 6;
        int result = a++ + --b + ++a + b++;
        //      22 = 5   +   5 +   7 + 5
        System.out.println(result);
    }
}
```
o/p:
```bash
22
```

# 20
``` java
public class Main {
    public static void main(String[] args) {
        int i = 1;
        int j = i++ + i++ + ++i + i++ + ++i + i;
        // 23 = 1   + 2   +   4 + 4   +   6 + 6
        System.out.println(i + " " + j); // 6 23
    }
}
```
o/p:
```bash
6 23
```
