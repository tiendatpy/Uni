package bt_TH.stratery.cc2;
import java.util.Date;

public class SinhVien {

    private String hoTen;
    private Date ngaySinh;

    public String getHoTen() {
        return hoTen;
    }
    public float getDiemTB() {
        return diemTB;
    }

    public SinhVien(String hoTen, Date ngaySinh, float diemTB) {
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.diemTB = diemTB;
    }

    private float diemTB;
    @Override
    public String toString(){
        return "Họ tên: " + hoTen +
                "\nNgày Sinh: " + ngaySinh +
                "\nĐiểm trung bình: " + diemTB;
    }
}
