//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
//         1. Khai báo biến
//         kiểu_dữ_liệu tên_biến;
//         2. Cấu trúc điều khiển
//         if else
//         switch case
//         3. Liên hệ
//         - Gán giá trị: =, += ,-=,/=, %=
//         - Phép toán: +,-,*,/, ++, --
//         - so sánh: ==,>=,<=,>,<, !=
//         - Logic: && (AND), || (OR), ! (NOT)
//         4. Class
//         - thuộc tính
//         - phương thức
//

        // Vòng lặp
        // 1. while
        //Systax:  while(mệnh_đề_điều_kiện){
        //                                      khối lệnh;
        //                                  }
        int temp = 1;
        while (temp <5) {
            System.out.println(temp + " - Devmaster");
            temp++;
        }
        System.out.println("temp: "+ temp);
        // 2. do while
        //Systax:   do{
        //              khối lệnh;
        //          }while(mệnh_đề_điều_kiện)
        do {
            System.out.println("25 Vũ Ngọc Phan");
            System.out.println("temp do while:"+ temp);
        }while (temp <5);

        System.out.println("temp"+ temp);
        // 3. for
        // Systax: for(khởi_tạo_biến_tăng/giảm ; mệnh_đề_điều_kiện ; biến_tăng/giảm){
        //             khối_lệnh;
        //          }
        for (int i=0 ; i<=5   ;i++){
            System.out.printf("Giá trị i: %d \n", i);

        }
        for (int i=0 , j =0; i<=5 && j<8  ;i++, j+=2 ){
            System.out.printf("Giá trị i: %d \n", i);
            System.out.printf("Giá trị j: %d \n", j);
        }
        // for khuyết
        int i=3;
        for (; i<=5   ;i++){
            System.out.printf("Giá trị i: %d \n", i);

        }

        for (int j =0; ; j++){
            System.out.printf("Giá trị j: %d \n", j);
            if(j<9){
                break;
            }
        }
        for (int j =0; j<5 ; ){
            System.out.printf("Giá trị j: %d \n", j);
            j++;
        }

        for (;;){
            System.out.printf("");
            i++;
            if(i<10){
                break;
            }

        }
        // 4. foreach
        // systax: for(var tên_biến : tên_mảng/list){
        //   khối_lênh
        // }
        System.out.println("============================");
        int[] number = {1,5,6,8,9,10};
        for (int j = 0; j < number.length; j++) {
            System.out.println(number[j]);
        }
        System.out.println("============================");
        for(var num : number){
            num =5;
            System.out.println(num);
        }
        System.out.println("============================");
        for (int j = 0; j < number.length; j++) {
            System.out.println(number[j]);
        }


        // Vòng lặp lồng nhau
        for (int j=0 ; j<=5   ;j++){
            System.out.printf("Giá trị j: %d \n", j);
            for (int k=0 ; k<=5   ;k++){
                System.out.printf("Giá trị k: %d \n", k);
            }
        }


        //break
        for (int j=0 ; j<5 ;j++ ){
            System.out.printf("Gi<UNK> tr<UNK> j: %d \n", j);
            if(j==3){
                break;
            }
            System.out.printf("Devmaster");
        }
        //continue
        for (int j=0 ; j<5 ;j++ ){
            System.out.printf("Gi<UNK> tr<UNK> j: %d \n", j);
            if(j==3){
                continue;
            }
            System.out.printf("Devmaster");
        }

        //return

    }
}