package on_gk.builder.A1;

public class CTHD {
    String tenSP;
    int soLuong;
   float Chietkhau;
    double donGia;

    public CTHD(String tenSP, int soLuong, float chietkhau, double donGia) {
        this.tenSP = tenSP;
        this.soLuong = soLuong;
        this.Chietkhau = chietkhau;
        this.donGia = donGia;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Tên sP: ").append(tenSP)
                .append(", Số lượng").append(soLuong)
                .append(", Chiết khấu: ").append(Chietkhau)
                .append(", Đơn giá: ").append(donGia);
        return builder.toString();
    }
}
