package bt_TH.builder.A1;

import java.util.ArrayList;
import java.util.List;

public class HoaDon {
    HoaDonHeader hoaDonHeader;
    List<CTHD> cthds;

    private HoaDon(Builder b) {
        this.hoaDonHeader = b.hoaDonHeader;
        this.cthds = b.cthds;
    }

    public static class Builder{
        HoaDonHeader hoaDonHeader;
        List<CTHD> cthds = new ArrayList<>();

        public Builder setHoaDonHeader(String maHD, String ngayBan, String tenKH) {
            hoaDonHeader = new HoaDonHeader(maHD, ngayBan, tenKH);
            return this;
        }

        public Builder addCTHD(String sanpham, int soLuong, double donGia, float chietKhau){
            cthds.add(new CTHD(sanpham, soLuong, donGia, chietKhau));
            return this;
        }
        public HoaDon build(){
            return new HoaDon(this);
        }
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(hoaDonHeader.toString())
                .append("\nChi tiết hóa đơn: ");
        for(var c : cthds){
            builder.append("\n\t").append(c.toString());
        }
        return builder.toString();
    }
}
