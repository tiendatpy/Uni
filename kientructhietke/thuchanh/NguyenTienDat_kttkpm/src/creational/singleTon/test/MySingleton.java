package creational.singleTon.test;

import java.util.Random;

public class MySingleton {
    private static MySingleton instance;
    private int index;
    private MySingleton(int index)
    {this.index = index;};
    public static MySingleton getInstance(){
        if(instance == null){
            var rand = new Random();
            instance = new MySingleton(rand.nextInt(1, 3));
        }
        return instance;
    }
    public void SaysHi(){
        System.out.println("Hello tien dat " + index);
    }
}
