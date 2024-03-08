package creational.singleTon.test;

public class MainMySingleTon {
    public static void main(String[] args) {
        // Tạo một Runnable từ phương thức SaysHi() của Singleton
        Runnable runnable = () -> {
            MySingleton.getInstance().SaysHi();
        };

        // Tạo một Thread từ Runnable đã tạo
        Thread thread1 = new Thread(runnable);
        Thread thread2 = new Thread(runnable);

        // Bắt đầu thực thi thread
        thread1.start();
        thread2.start();
    }
}
