package DemoGeneric;

public class DemoGeneric {
    public static void main(String[] args) {
        Integer[] arrInt = {1,4,6,7,9};
        String[] arrStr = {"Devmaster", "25 Vũ Ngọc Phan"};
        printArray(arrInt);
        printArray(arrStr);


    }

    public static <E> void printArray(E[] array){
        for(E e:array){
            System.out.printf("%s\n", e);
        }
        System.out.println();
    }
}
