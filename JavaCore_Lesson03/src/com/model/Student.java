package com.model;

import java.util.Scanner;

public class Student {
    ///field
    // systax: phạm_vi kiểu_dữ_liệu tên_field/biến
    // nếu k khai báo phạm vi thì phạm vi mặc định protected
    int id;
    String name;
    int age;

    /// contructor
    // systax:
    // phạm_vi tên_lớp(kiểu_dữ_liệu tên_tham_số,....){
    //      giá_trị_khởi_tạo
    // }
    // phạm_vi không nhận giá trị private, thường sử dụng là public
    // gọi đến duy nhất 1 lần khi khai báo
    public Student() {

    }
        public  Student(int id, String name, int age){
            this.id=id;
            this.name=name;
            this.age=age;
        }

    ///  phương thức
    // systax:
    // phạm_vi kiểu_giá_trị_trả_về tên_phương_thức(kiểu_dữ_liệu tham_số,...){
    //          nội_dung;
    //          return giá_trị_trả_về;
    // }
    // nếu k khai báo phạm vi thì phạm vi mặc định protected
    public void Input(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Nhập MSV");
        id = sc.nextInt();
        sc.nextLine();
        System.out.println("Nhập tên SV");
        name = sc.nextLine();
        System.out.println("Nhập tuổi sinh viên");
        age = sc.nextInt();
    }

    public void Output(){

        System.out.printf("Thông tin sinh viên MSV: %d -Họ và tên: %s - Tuổi: %d \n",id, name,age);
    }
}
