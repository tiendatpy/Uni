package on_gk.singleton.a6;

public class MainA6 {
    public static void main(String[] args) {
        UI u1 = new UI();
        UI u2 = new UI();
        u1.addSP("123","Trà xanh",10,15_000);
        u2.addSP("124","Trà xanh",10,15_000);
        u1.display();

    }
}
