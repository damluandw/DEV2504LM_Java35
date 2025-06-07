package TestVolatile;

public class TestVolatile extends Thread {
    volatile boolean keepRunning = true;
    public void run() {
        long count =0;
        while (keepRunning) {
            count++;
        }
        System.out.println("Thead terminal:" + count);
    }

    public static void main(String[] args) throws InterruptedException {
        TestVolatile t1=new TestVolatile();
        t1.start();
        Thread.sleep(1);
        t1.keepRunning=false;
        System.out.println("KeepRunning set to false");
        //1194541165
        //330321903
        //66481024
        //137336

    }
}
