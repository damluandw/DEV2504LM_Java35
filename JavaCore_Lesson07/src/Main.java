//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
//    public native int square(int i);
    public static void main(String[] args) {
        // Genneric and Collection
        // List/Set/Map
        //
//
//        System.loadLibrary("Main");
//        System.out.println( new Main().square(5));

        DemoStatic obj = new DemoStatic("Devmaster",1);

        DemoStatic obj1 = new DemoStatic("Devmaster",2,300);
        DemoStatic obj2 = new DemoStatic("Devmaster",2,400);
        System.out.println(obj.ToStringA());
        System.out.println(obj1.ToStringA());
        DemoStatic obj3 = new DemoStatic("Devmaster",2,500);

        System.out.println(obj.ToStringA());
        System.out.println(obj1.ToStringA());
        System.out.println(obj2.ToStringA());
        System.out.println(obj3.ToStringA());
    }
}