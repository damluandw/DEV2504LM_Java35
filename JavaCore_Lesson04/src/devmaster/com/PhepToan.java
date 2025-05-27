package devmaster.com;

/**
 * Class dùng để tính toán
 * */
public class PhepToan {

    /**
    * Phương thức tính tổng....
    *
    * @param num1 : giá trị 1
    * @param num2 : giá trị 2
    * @return: In ra ngoài màn hình giá trị tổng
    * */
    public void Add(int num1, int num2){
        int sum=0;
        sum = num1+num2;
        System.out.printf("%d + %d = %d\n",num1,num2, sum);
    }
    /**
     *  Phương thức trừ 2 tham số
     * @param num1: Số bị trừ
     * @param num2: số trừ
     * @return In ra ngooài màn hình hiệu hai giá trị
    * */
    protected void Sub(int num1, int num2){
        int sub=0;
        sub = num1 - num2;
        System.out.printf("%d - %d = %d\n",num1,num2, sub);
    }

    void Mul(int num1, int num2){
        float mul=0;
        mul = num1*num2;
        System.out.printf("%d * %d = %.2f\n",num1,num2, mul);
    }

    public void Div(int num1, int num2){
        float div=0;
        div =  (float) num1 / num2;
        System.out.printf("%d / %d = %.2f\n",num1,num2, div);
    }

    //phương thức không giới hạn tham số
    public void Add(int...num){
       float sum=0;
//        for(int i:num){
//
//        }
       for(int i=0;i<num.length;i++){
           sum+=num[i];
           // sum = sum + num[i];
       }
        System.out.println("sum = "+sum);
    }

    public void Add(int num1, float num2){
        float sum=0;
        sum = num1+num2;
        System.out.printf("%d + %d = %.2f\n",num1,num2, sum);
    }
    public void Add(float num1, int num2){
        float sum=0;
        sum = num1+num2;
        System.out.printf("%d + %d = %.2f\n",num1,num2, sum);
    }
}
