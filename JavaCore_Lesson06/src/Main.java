import DemoGeneric.DemoGenericClass;
import DemoGeneric.Student;

import java.util.*;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
    // I. Array
    // 1.1. Mảng đơn chiều
    // systax: Kiểu_dữ_liệu[] tên_mảng = new Kiểu_dữ_liệu[]
    // sử dựng: tên_mảng[ví_trí]
    // 1.2 Mảng đa chiều
    // Systax Kiểu_dữ_liệu[][]... tên_mảng = new Kiểu_dữ_liệu[số_lượng_bản_ghi][số_lượng_bản_ghi]...
    // II. ArrayList (Collection)
    // Systax: ArrayList tên_mảng = new ArrayList();
    // Chú ý: K có kiểu giá trị cố định
    //  Một số hàm sử dụng: sort, add,...
    // III. Chuỗi - String
    // Systax: String tên_biến = new String();
    // String tên_biến = "";
    // Một số hàm xử lý với chuỗi: concat(), compareTo(), split(),...

//        DemoGenericClass<Integer> demoGenericClass = new DemoGenericClass<Integer>();
//        demoGenericClass.setBien_kieu_T(6);
//        System.out.println(demoGenericClass.getBien_kieu_T());
//
//        List tempList = new ArrayList();
//        ArrayList tempArrayList = new ArrayList();
//
//
//        List<String> tempList2 = new ArrayList();
//        tempList.add("Helloword");
//        tempList.add(2);
//        for (int i = 0; i < tempList.size(); i++) {
//            System.out.println(tempList.get(i));
//        }
//
//
//        tempList2.add("Devmaster");
//        tempList2.add("25 Vũ Ngọc Phan");
//        tempList2.add("Devmaster");
//        for(String  str : tempList2) {
//            System.out.println(str);
//        }


        SortedSet<String> str = new TreeSet<String>();
        str.add("a");
        str.add("d");
        str.add("e");
        str.add("c");
        str.add("b");
//        Collections.sort(str,new ComparatorStr());
        for(String s: str){
            System.out.println(s);
        }


//        HashSet - TreeSet - LinkedHashSet
//        List - ArrayList - LinkedList -
//                Queue - - - - -
//                Map HashMap - TreeMap - LinkedHashMap
    }
}
//
//     class ComparatorStr implements Comparator<String> {
//         @Override
//         public int compare(String o1, String o2) {
//             if (o1.compareTo(o2) <0) {
//                 return o1.compareTo(o2);
//             } else {
//                 return o2.compareTo(o1);
//             }
//         }

//}