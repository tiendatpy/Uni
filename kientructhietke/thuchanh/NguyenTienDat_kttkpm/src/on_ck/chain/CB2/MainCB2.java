package on_ck.chain.CB2;

public class MainCB2 {
    public static void main(String[] args) {
        NhanVienTT bv = new NhanVienTT("Tien Dat", "Bao ve", 100_000);
        NhanVienTT truongphong = new NhanVienTT("Tien Dat2", "Trưởng phòng", 200_000);
        NhanVienTT phogiamdoc = new NhanVienTT("Tien Dat3", "Phó Giám đốc", 300_000);
        NhanVienTT  tonggiamdoc = new NhanVienTT("Tien Dat4", "Tổng giám đốc", 400_000);
        ChuTich ct = new ChuTich("Banh em", "Chủ tịch", 500_000);

        bv.capCaoHon(truongphong).capCaoHon(phogiamdoc).capCaoHon(tonggiamdoc).capCaoHon(ct);

        System.out.println( bv.xuLyVay(200001));
    }
}
