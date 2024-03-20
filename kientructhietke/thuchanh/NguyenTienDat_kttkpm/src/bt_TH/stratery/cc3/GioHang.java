package bt_TH.stratery.cc3;

import java.util.ArrayList;
import java.util.List;

public class GioHang {
    private IThanhToan t;
    List<MatHang> gioHang = new ArrayList<>();
    public void themMH(MatHang m){
        gioHang.add(m);
    }

    public GioHang() {
    }

    public GioHang(IThanhToan thanhtoan) {
        this.t = thanhtoan;
    }
    public void setThanhToan(IThanhToan thanhToan){
        t = thanhToan;
    }
    public double tongTien(){
        double tong = 0;
        for(MatHang mh : gioHang){
            tong += mh.get_donGia() * mh.get_soLuong();
        }
        return tong;
    };
    public double tinhTienGiamGia(){
        return t.thanhToan(tongTien());
    }
    public double tienCanThanhToan(){
        return tongTien() - tinhTienGiamGia();
    }
}
