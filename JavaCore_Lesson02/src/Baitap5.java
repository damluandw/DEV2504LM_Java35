public class Baitap5 {
    public static void main(String[] args) {
        int n = 9;
        // Cách 1:
        for (int i = 0; i < 2*n; i++) {
            for (int j = 0; j < 2*n; j++) {
                if(j==n-i || j==n+i || i == n){
                    System.out.print("*");
                }else
                {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
        // Cách 2:
        int dong = 0;
        for (int i = 0; i < 2*n; i++) {
            if(i==n-1 && dong == 0){
                System.out.print("*");
            }
            if(((n-i==dong || i==dong+n)&& dong!=0) || dong==n-1){
                System.out.print("*");
            }else
            {
                System.out.print(" ");
            }
            if(i == 2*n-1){
                System.out.println("");
                i=0;
                dong++;
            }
            if(dong==n){
                break;
            }
        }
        // Cách 3:
        for (int i = 1; i <= n; i++) {
            if (i == 1) System.out.println(" ".repeat(n - i ) + "*");
            else if (i == n) System.out.println("*".repeat(n * 2 - 1));
            else System.out.println(" ".repeat(n - i) + "*" + " ".repeat(2 * i - 3) + "*");
        }



    }
}
