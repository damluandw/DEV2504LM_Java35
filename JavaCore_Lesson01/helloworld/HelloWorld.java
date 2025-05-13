package helloworld;

import java.util.Scanner;

public class HelloWorld {

    public static void main(String[] args) {
        System.out.println("Hello World");
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter your name");
        String name = sc.nextLine();
        System.out.println("Enter your age");
        int age = sc.nextInt();
        System.out.println("Enter your gender");
        String gender = sc.next();
        System.out.println("Enter your address");
        String address = sc.next();
    }

}
