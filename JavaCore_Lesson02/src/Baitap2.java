
public class Baitap2 {
    public static void main(String[] args) {
        for (int i = 1; i <= 100; i++) {
            if(i%2==0){
                System.out.printf("%d ,",i);
            }
            find69(i);

            DemoLoop demoLoop = new DemoLoop();
            demoLoop.find69(i);
        }
    }
    public static void find69(int number){
        if(number==69){
            System.out.println();
            System.out.println("Ơ Rê Ka - Tìm ra rồi");
            System.out.printf("%d",number);
            System.out.println();
        }
    }
}



