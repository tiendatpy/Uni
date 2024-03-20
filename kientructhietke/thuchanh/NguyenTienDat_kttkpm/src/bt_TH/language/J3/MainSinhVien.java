package bt_TH.language.J3;

public class MainSinhVien {
    public static void main(String[] args) {
        SinhVienIT it = new SinhVienIT("Tiến Đạt 2", "IT", 7, 8, 9);
        SinhVienBiz biz = new SinhVienBiz("Tiến Đạt2", "MKT", 8, 6);
        it.Xuat();
        biz.Xuat();
    }
}
