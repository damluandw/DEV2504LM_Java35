import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        //1. Method -Phương thức
        // bổ_tử kiểu_giá_Trị_trả_về tên_phương_thưc(danh_tham_số){
        // Nội_dung_phương_thức
        //}
        // 2. Bổ tử
        // public, protected, default, private
        // 3. Javadoc
        // Lưu ý: Thường sẽ viết trên phương thức
        // Cách viết:
        // /**
        // *  Nội dung giới thiệu về phương thức
        // * @param tham_số_truyền_vào - gợi ý
        // * @return giá_trị_trả_vể - gợi ý
        // **/
        // Xuất Javadoc - xuất ra 1 trang web
        //
         /*
        ///  Bài mới - Mảng
        //  Systax: Khai báo mảng
        // Mảng  một chiều
        // Kiểu_dữ_liệu[] tên_mảng;
        float[] arrFloat;
        String[] arrString;
        boolean[] arrBoolean;
        // Cấp bộ nhớ cho mảng
        // Systax:  Kiểu_dữ_liệu[] tên_mảng = new Kiểu_dữ_liệu[số_lượng_giá_trị_của_mảng];
        float[] arrFloat2 = new float[3];
        arrString = new  String[5];
        // Mảng  đa chiều
        // Systax: Kiểu_dữ_liệu[][] tên_mảng = Kiểu_dữ_liệu[số_lượng_hàng][số_lượng_cột];
        float[][] arrFloat3 = new float[2][3];

        // Cách gán giá trị
        // gán giá trị 1 chiều
//        arrFloat2[0] = 2;
//        arrFloat2[1] = 3;
          arrFloat2[2] = 4;

        arrFloat = new float[]{1,6,2,4}; // tạo một ô nhớ mới
        int[] arrFloat5 = {6,7,9};

        // gán giá trị đa chiều
        arrFloat3[0][0] = 2;
        arrFloat3[0][1] = 3;
        arrFloat3[0][2] = 8;

        arrFloat3 = new float[][]{{6,7,6,10},{6,7,9,8}}; // tạo một ô nhớ mới
        int[][] arrFloat4 = {{6,7,9},{8,10,11}};

        // Cách truy cập:
        // Systax:  Tên_mảng[vị_trí_phần_tử]
        for (int i = 0; i < arrFloat.length; i++) {
            System.out.println(" Mảng arrFloat phần tử thứ" + i + " :" + arrFloat[i]);
        }

        for (int i = 0; i < arrFloat4.length; i++) {
            for (int j = 0; j < arrFloat4[i].length; j++) {
                System.out.println("arrFloat4[" + i +"]["+j + "] :" + arrFloat4[i][j]);
            }
        }

        //
        int[][][][] arrInt;

        /// Array
        // systax: Giống obejct
        // ArrayList tên_arr_list = new ArrayList();
        ArrayList arrayList = new ArrayList();

        arrayList.add("Devmaster");
        arrayList.add(1);
        arrayList.add("25 Vũ Ngọc Phan");
        arrayList.add("25 Vũ Ngọc Phan");
        arrayList.removeLast();
        for (int i = 0; i < arrayList.size(); i++) {
            System.out.println(arrayList.get(i));
        }

        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(3);
        arrayList2.add(4);
        arrayList2.add(2);

        arrayList2.sort(null);
        for (int i = 0; i < arrayList2.size(); i++) {
            System.out.println(arrayList2.get(i));
        }
        //HashMap
        HashMap hashMap = new HashMap();
        hashMap.put("Ma01","DevMaster");
        hashMap.put("Ma02","20");
        hashMap.put("Ma03","25 Vũ Ngọc Phan");

        System.out.println(hashMap.get("Ma01"));

        //String
        char a;
        a = 'd';
        char[] arrChar = new  char[]{'D','e','v','m','a','s','t','e','r'};

        String name = "Devmaster";
        //name = "DamLuan";
        name.length(); // đếm số lượng char trong chuỗi
        name.charAt(3); // lấy ký tự tại ví trí 3
        name.substring(1,4); // cắt chuỗi từ vị trí 1 đến 4
        name.contains("devmaster"); // so sánh chuỗi => trả về giá trị true/false
        name.startsWith("Dev"); // Kiểm tra ký tự bắt đầu trong chuỗi => return true/false
        name.endsWith("luan"); // Kiểm tra ký tự kết thúc trong chuỗi => return true/false
        name.indexOf("ter"); // trả về vị trí của chuỗi
        name.concat(" Địa chỉ 25 vũ ngọc phan"); // nối chuỗi
        name.split(" "); // tìm đến các vị trí có dấu cách => return String[]
        // ["Devmaster", "Địa", "chỉ","25","vũ","ngọc","phan"]
        */
        String name2 = new String("Tên:");
        StringBuilder name3 = new StringBuilder("Devmaster");

        name3.insert(3, "Tên Văn phòng: ");
        System.out.println(name3.toString());
        name3.delete(0,3);
        System.out.println(name3.toString());

        name3.reverse();
        System.out.println(name3.toString());
    }
}