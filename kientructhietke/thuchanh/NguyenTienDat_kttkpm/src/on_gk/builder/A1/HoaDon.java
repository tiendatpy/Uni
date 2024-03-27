package on_gk.builder.A1;

import java.util.ArrayList;
import java.util.List;

public class HoaDon {
    HoaDonHeader hoaDonHeader;
    List<CTHD> cthds;

    private HoaDon(Builder b) {
        this.hoaDonHeader = b.hoaDonHeader;
        this.cthds = b.cthds;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Hóa đơn: \n").append(hoaDonHeader);
        builder.append("\nChi tiết hóa đơn:\n");
        for(var cthd : cthds){
            builder.append(cthd).append("\n");
        }
        return builder.toString();
    }

    public static class Builder{
        HoaDonHeader hoaDonHeader;
        List<CTHD> cthds = new ArrayList<>();

        public Builder setHoaDonHeader(String maHD, String tenKH, String ngayBan) {
            hoaDonHeader = new HoaDonHeader(maHD, tenKH, ngayBan);
            return this;
        }

        public Builder setCthds(String tenSP, int soLuong, float chietkhau, double donGia) {
            cthds.add(new CTHD(tenSP, soLuong, chietkhau, donGia));
            return this;
        }
        public HoaDon build(){
            return new HoaDon(this);
        }
    }
}
