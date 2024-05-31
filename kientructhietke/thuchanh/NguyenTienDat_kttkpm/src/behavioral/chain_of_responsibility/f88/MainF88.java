package behavioral.chain_of_responsibility.f88;

public class MainF88 {
    public static void main(String[] args) {
        NhanVienF88 nv = new NhanVien("Tiến Đạt", "Bảo vệ",500_000);
        NhanVienF88 tv = new NhanVien("Tiến Đạt2", "Tạp vụ",600_000);
        NhanVienF88 tk = new NhanVien("Tiến Đạt3", "Thư ký",700_000);
        NhanVienF88 gd = new NhanVien("Tiến Đạt4", "Giám đốc",800_000);
        NhanVienF88 ct = new ChuTich("Sơn tùng","Chủ tịch",1_000_000);
        nv.capCaoHon(tv).capCaoHon(tk).capCaoHon(gd).capCaoHon(ct);
        System.out.println(nv.xuLyKhoanVay(900_000));
        System.out.println(nv.xuLyKhoanVay(2_000_000));
    }
}
