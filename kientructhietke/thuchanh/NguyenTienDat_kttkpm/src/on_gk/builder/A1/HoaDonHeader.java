package on_gk.builder.A1;

public class HoaDonHeader {
    String maHD, ngayBan, tenKH;

    public HoaDonHeader(String maHD, String ngayBan, String tenKH) {
        this.maHD = maHD;
        this.ngayBan = ngayBan;
        this.tenKH = tenKH;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Mã hóa đơn:").append(maHD)
                .append(", Ngày bán").append(ngayBan)
                .append(", Tên KH: ").append(tenKH);
        return builder.toString();
    }
}
