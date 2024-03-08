package creational.singleTon.test;

import java.util.Random;

public class MySingleton {
//    khai bao bien
    private static MySingleton instance;
//    phuong thuc khoi tao private hoac protected
    int index;
    protected MySingleton(int index){
        this.index = index;
    }
//    phuong thuc tinh dung de tra ve bien instance
    public static MySingleton getInstance(){
        if(instance == null){
            var rand = new Random();
            instance = new MySingleton(rand.nextInt(1,4));
        }
        return instance;
    }
    public void SaysHi(){
        System.out.println("Hello" + index);
    }
}
