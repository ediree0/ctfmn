# smartdoor Writeup

we got Spike.class file and decompiling it using java decompiler gives us the following code

```java
import java.util.Scanner;

class Spike {
   public static void main(String[] var0) {
      Spike var1 = new Spike();
      Scanner var2 = new Scanner(System.in);
      System.out.print("Enter password: ");
      String var3 = var2.next();
      String var4 = var3.substring("HZ{".length(), var3.length() - 1);
      if (var1.check(var4)) {
         System.out.println("Goodjob. This is correct. You found a flag.");
      } else {
         System.out.println("Please try again!");
      }

   }

   public boolean check(String var1) {
      if (var1.length() != 32) {
         return false;
      } else {
         char[] var2 = new char[32];

         int var3;
         for(var3 = 0; var3 < 8; ++var3) {
            var2[var3] = var1.charAt(var3);
         }

         while(var3 < 16) {
            var2[var3] = var1.charAt(23 - var3);
            ++var3;
         }

         while(var3 < 32) {
            var2[var3] = var1.charAt(46 - var3);
            var3 += 2;
         }

         for(var3 = 31; var3 >= 17; var3 -= 2) {
            var2[var3] = var1.charAt(var3);
         }

         String var4 = new String(var2);
         System.out.println(var4);
         return var4.equals("y0u_unl03hT_d3kcBSj!d30g_0k_p0_!");
      }
   }
}
```

from this we get the flag by writing a simple python code

```python 
def main():
    text = "y0u_unl03hT_d3kcBSj!d30g_0k_p0_!"
    flag = [''] * 32

    for i in range(8):
        flag[i] = text[i]

    for i in range(8, 16):
        flag[i] = text[23 - i]

    for i in range(16, 32):
        flag[i] = text[46 - i]

    for i in range(31, 16, -2):
        flag[i] = text[i]

    flag = 'HZ{'+''.join(flag) + '}'
    print(flag)

if __name__ == "__main__":
    main()
```

running this provide us with the following flag

```
HZ{y0u_unl0ck3d_Th3_Sp!k3_g00d_j0B!}
``