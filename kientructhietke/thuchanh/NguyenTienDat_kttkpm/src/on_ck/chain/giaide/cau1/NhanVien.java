package on_ck.chain.giaide.cau1;

public class NhanVien {
    String tenNV, Sdt;
    int luong;

    public NhanVien(String tenNV, String sdt, int luong) {
        this.tenNV = tenNV;
        Sdt = sdt;
        this.luong = luong;
    }

    @Override
    public String toString() {
        return "NhanVien{" +
                "tenNV='" + tenNV + '\'' +
                ", Sdt='" + Sdt + '\'' +
                ", luong=" + luong +
                '}';
    }
}
