import Demo.Student;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

            Student s =new Student();
            s.NhapThongTin();

            if(s.age>10){
                String temp = "Tuổi lớn hơn 10";
                System.out.println(temp);
            }
//            String temp = "Tuổi lớn hơn 10";
//            System.out.println(temp);
            s.XuatThongTin();
        }
    }
