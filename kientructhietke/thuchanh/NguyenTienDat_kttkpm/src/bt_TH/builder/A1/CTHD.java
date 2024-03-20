package bt_TH.builder.A1;

public class CTHD {
    private String sanpham;
    private int soLuong;
    private double donGia;
    private float chietKhau;

    public CTHD(String sanpham, int soLuong, double donGia, float chietKhau) {
        this.sanpham = sanpham;
        this.soLuong = soLuong;
        this.donGia = donGia;
        this.chietKhau = chietKhau;
    }

    @Override
    public String toString() {
        return "Tên sp: " + sanpham + ", Số lượng: " + soLuong + ", Đơn giá: " + donGia + ", Chiết khấu:" + chietKhau;
    }
}
