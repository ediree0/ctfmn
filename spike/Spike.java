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
