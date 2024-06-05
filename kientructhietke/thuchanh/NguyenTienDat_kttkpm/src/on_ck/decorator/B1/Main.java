package on_ck.decorator.B1;

public class Main {
    public static void main(String[] args) {
        BieuThuc bt = new BieuThucDonGian(8);
        System.out.println(bt);
        bt = new Cong(bt, 8);
        System.out.println(bt);
        bt = new Cong(bt, 7);
        System.out.println(bt);
    }
}
