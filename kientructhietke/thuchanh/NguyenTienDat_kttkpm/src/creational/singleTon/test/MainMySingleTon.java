package creational.singleTon.test;

public class MainMySingleTon {
    public static void main(String[] args) {
        MySingleton m1 = MySingleton.getInstance();
        MySingleton m2 = MySingleton.getInstance();
        m1.SaysHi();
        m2.SaysHi();
    }
}
