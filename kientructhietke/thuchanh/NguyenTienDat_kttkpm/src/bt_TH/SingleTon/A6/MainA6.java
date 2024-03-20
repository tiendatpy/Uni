package bt_TH.SingleTon.A6;

public class MainA6 {
    public static void main(String[] args) {
        UI u1 = new UI();
        UI u2 = new UI();
        UI u3 = new UI();
        u1.addSP("123","Bot giat",10,10_000);
        u1.addSP("124","Tivi",10,100_000);
        u1.InKQ();
        u2.InKQ();

    }
}
