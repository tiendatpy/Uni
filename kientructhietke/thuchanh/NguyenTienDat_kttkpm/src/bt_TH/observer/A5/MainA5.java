package bt_TH.observer.A5;

public class MainA5 {
    public static void main(String[] args) {
        ATM atm = new ATM();
        TaiKhoan a = new TaiKhoan(100_000, "Tien Dat", atm );
        TaiKhoan b = new TaiKhoan(200_000, "Tien Dat2", atm);
        System.out.println("Lần 1:");
        a.duaTheoVaoATM();
        atm.rutTien(50000);
        a.rutTheKhoiATM();
        System.out.println("Lần 2:");
        atm.rutTien(10000);
    }
}
