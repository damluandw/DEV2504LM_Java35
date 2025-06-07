public class DemoStatic {

    String name;
    int age;

    static  int SchoolCode =1000;
    public DemoStatic(){}
    public DemoStatic(String name, int age){
        this.name=name;
        this.age=age;
    }

    public DemoStatic(String name, int age, int SchoolCode){
        this.name=name;
        this.age=age;
        this.SchoolCode = SchoolCode;
    }


    public String ToStringA(){
        return name + " - " + age + " - "+SchoolCode;
    }

}
