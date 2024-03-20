package bt_TH.stratery.cc3;

public class MainCC3 {
    public static void main(String[] args) {
        MatHang m1 = new MatHang("Chuối", 100, 10000);
        MatHang m2 = new MatHang("Dầu chiên", 5, 25000);
        MatHang m3 = new MatHang("Bột giặt", 5, 13000);
        GioHang gh = new GioHang();
        gh.themMH(m1);
        gh.themMH(m2);
        gh.themMH(m3);
        gh.setThanhToan(new ThanhToanAirPay());
        System.out.println("Tổng tiền hàng: " + gh.tongTien());
        System.out.println("Tiền khuyến mãi thanh toán: " + gh.tinhTienGiamGia());
        System.out.println("Tiền cần thanh toán: " + gh.tienCanThanhToan());
    }
}
