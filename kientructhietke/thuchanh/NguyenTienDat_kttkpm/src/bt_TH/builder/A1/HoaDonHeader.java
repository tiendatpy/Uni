package bt_TH.builder.A1;

public class HoaDonHeader {
    public String maHD, ngayBan, tenKH;


    public HoaDonHeader(String maHD, String ngayBan, String tenKH) {
        this.maHD = maHD;
        this.ngayBan = ngayBan;
        this.tenKH = tenKH;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Mã hóa đơn: ").append(maHD)
                .append(", Ngày bán: ").append(ngayBan)
                .append(", Tên khách hàng: ").append(tenKH)
                .append("\nDanh sách chương:");
        return builder.toString();
    }
}
