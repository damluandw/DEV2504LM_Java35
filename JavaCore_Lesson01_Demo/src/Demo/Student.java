package Demo;

import java.util.Scanner;

public class Student {
    private String MSV;
    private String name;
    public int age;
    private String address;
    private String email;
    private String phone;

    public void  NhapThongTin(){
        Scanner sc=new Scanner(System.in);
        System.out.println("Nhập MSV:");
        MSV=sc.nextLine();
        System.out.println("Nhập tên:");
        name=sc.nextLine();
        System.out.println("Nhập tuổi:");
        age= sc.nextInt();
        sc.nextLine();
        System.out.println("Nhập địa chỉ");
        address= sc.nextLine();
        System.out.println("Nhập email");
        email=sc.nextLine();
        System.out.println("Nhập số điện thoại");
        phone=sc.nextLine();
    }
    public void XuatThongTin(){
        Scanner sc=new Scanner(System.in);
        System.out.println("----------------------------------");
        System.out.println("Thông tin sinh viên ");
        System.out.println("MSV: "  + MSV);
        System.out.println("Tên: "  + name);
        System.out.println("Tuổi: "  + age);
        System.out.println("Địa chỉ: "  + address);
        System.out.println("Email: "  + email);
        System.out.println("SĐT: "  + phone);



    }

}
