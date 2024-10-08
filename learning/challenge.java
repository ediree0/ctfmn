import java.util.Scanner;

public class Main {
    public Main() {
    }

    public static void main(String[] var0) {
        Scanner var1 = new Scanner(System.in);
        System.out.print("FLAG: ");
        String var2 = var1.nextLine();
        var1.close();
        int[] var3 = new int[]{13, 159, 144, 4, 61, 126, 146, 6, 106, 49, 71, 6, 106, 49, 4, 4, 106, 48, 50, 4, 4, 4, 106, 4, 6, 49, 71, 155, 4, 155, 51, 72};

        for(int var4 = 0; var4 < var2.length(); ++var4) {
            char var5 = var2.charAt(var4);
            int var6 = var5 + 52;
            var6 ^= 52;
            var6 -= 52;
            var6 ^= 25;
            var6 += 25;
            var6 -= 25;
            if (var6 != var3[var4]) {
                System.out.println("no way");
                return;
            }
        }

        System.out.println("nice");
    }
}
