package bt_TH.decorater.B1;

public class MainB1 {
    public static void main(String[] args) {
        BieuThuc b = new BieuThucDonGian(6);
        b = new Cong(b, 9);
        b = new Nhan(b, 8);
        b = new Cong(b, 5);
        System.out.println(b.toString());
    }
}
